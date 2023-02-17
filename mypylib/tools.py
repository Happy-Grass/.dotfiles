from matplotlib import rcParams


def cm2inch(inch_list: list):
    '''
    将单位为cm的数据转为单位为inch
    '''
    cm_list = []
    for i in inch_list:
        cm_list.append(i * 0.3937)
    return cm_list


def set_mpl_rcParams(**kwargs):
    """
    设置matplotlib 的绘图基本参数
    """
    default_config = {
        "font.family": 'serif',
        "font.size": 10,
        "mathtext.fontset": 'stix',  # matplotlib渲染数学字体时使用的字体，和Times New Roman差别不大
        "font.serif": ['SimSun'],  # 宋体
        "axes.unicode_minus": False,  # 处理负号
        "axes.linewidth": 0.5,  # 坐标轴设置为0.5磅
        "xtick.major.width": 0.5,  # xticks的粗细
        "xtick.minor.width": 0.375,
        "ytick.major.width": 0.5,  # yticks的粗细
        "ytick.minor.width": 0.375,
        "lines.linewidth": 0.75,  # 画线粗细
        "lines.markersize": 3,  # 画线时点标记大小
        "grid.linewidth": 0.5,  # 网格线粗细
        "grid.linestyle": '--'  # 网格线类型
    }

    # 将修改的参数赋值给默认参数
    for k, v in kwargs:
        default_config[k] = v
    rcParams.update(default_config)
    return
