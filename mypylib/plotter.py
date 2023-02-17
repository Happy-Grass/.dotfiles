import numpy as np

def adjacent_values(vals, q1, q3):
    # vals 一组原始数据
    # q1 四分之一
    # q3 四分之三
    # 返回离群上限和离群下限(超过了最大值就修正为最大值)
    vals = sorted(vals)
    upper_adjacent_value = q3 + (q3 - q1) * 1.5
    upper_adjacent_value = np.clip(upper_adjacent_value, q3, vals[-1])
    lower_adjacent_value = q1 - (q3 - q1) * 1.5
    lower_adjacent_value = np.clip(lower_adjacent_value, vals[0], q1)
    return lower_adjacent_value, upper_adjacent_value


def violin_plot(data, ax, colors=[], labels=[]):
    """
    @description  :
    plot a violingraph
    ---------
    @param  :
    Data: a list of different categrory data, such as
    Data = [np.array, np.array, np.array]
    ax: a axes
    -------
    @Returns  : the plot object
    -------
    """
    if len(labels) == 0:
        labels = range(1, len(data) + 1)
    if len(colors) == 0:
        colors = len(data) * ['#D43F3A']
    parts = ax.violinplot(dataset=data, showextrema=False, widths=0.50)
    for pc, c in zip(parts['bodies'], colors):
        pc.set_facecolor(c)
        pc.set_edgecolor('k')
        pc.set_linewidth(0.1)
        pc.set_alpha(1)

    # 获取四分之一位距，四分之三位矩，中位数,并分别存入quartile1, medians, quartiles3向量
    loc = np.percentile(data[0], [25, 50, 75])
    for i in data[1::]:
        temp_loc = np.percentile(i, [25, 50, 75])
        loc = np.c_[loc, temp_loc]

    quartile1, medians, quartile3 = loc[0, :], loc[1, :], loc[2, :]

    whiskers = np.array([
        adjacent_values(sorted_array, q1, q3)
        for sorted_array, q1, q3 in zip(data, quartile1, quartile3)])
    whiskers_min, whiskers_max = whiskers[:, 0], whiskers[:, 1]

    inds = np.arange(1, len(medians) + 1)  # 分段数
    ax.scatter(inds, medians, marker='o', color='white', s=1, zorder=3)  # 中位数标记
    ax.vlines(inds, quartile1, quartile3, color='k', linestyle='-', lw=2)  # 四分位粗线
    ax.vlines(inds, whiskers_min, whiskers_max, color='k', linestyle='-', lw=0.3)
    # 离群细线
    # set style for the axes
    ax.set_xticks(np.arange(1, len(medians) + 1))
    ax.set_xlim(0.25, len(medians) + 0.75)
    ax.set_xticklabels(labels=labels)
