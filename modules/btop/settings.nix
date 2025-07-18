{
  programs.btop.settings = {
    background_update = true;
    base_10_sizes = false;
    check_temp = true;
    clock_formate = "%X";

    cpu_bottom = false;
    cpu_core_map = "";
    cpu_graph_lower = "Auto";
    cpu_graph_upper = "Auto";
    cpu_invert_lower = true;
    cpu_single_graph = false;
    cpu_sensor = "Auto";

    custom_cpu_name = "";
    custom_gpu_name_0 = "";
    custom_gpu_name_1 = "";
    custom_gpu_name_2 = "";
    custom_gpu_name_3 = "";
    custom_gpu_name_4 = "";
    custom_gpu_name_5 = "";

    disk_free_priv = false;
    disks_filter = "";
    force_tty = false;
    gpu_mirror_graph = true;


    graph_symbol = "braille";
    graph_symbol_cpu = "default";
    graph_symbol_gpu = "default";
    graph_symbol_mem = "default";
    graph_symbol_net = "default";
    graph_symbol_proc = "default";

    io_graph_combined = false;
    ip_graph_speeds = "";
    io_mode = false;

    log_level = "WARNING";

    mem_below_net = false;
    mem_graphs = true;

    net_auto = true;
    net_download = 100;
    net_iface = "";
    net_sync = true;
    net_upload = 100;

    nvml_measure_pcie_speeds = true;

    only_physical = true;
    presets = "cpu:1:default,proc:0:default cpu:0:default,mem:0:default,net:0:default cpu:0:block,net:0:tty";

    proc_aggregate = false;
    proc_colors = true;
    proc_cpu_graphs = true;
    proc_filter_kernel = false;
    proc_gradient = true;
    proc_info_smaps = false;
    proc_left = false;
    proc_mem_bytes = true;
    proc_per_core = false;
    proc_reversed = false;
    proc_sorting = "cpu lazy";
    proc_tree = false;

    rounded_corners = true;
    selected_battery = "Auto";

    show_battery = true;
    show_coretemp = true;
    show_cpu_freq = true;
    show_disk = true;
    show_gpu_info = "Auto";
    show_io_stat = true;
    show_swap = true;
    show_uptime = true;

    shown_boxes = "cpu mem net proc";
    swap_disk = true;
    temp_scale = "celsius";
    theme_background = true;
    truecolor = true;
    update_ms = 2000;
    use_fstab = false;
    vim_keys = false;

    zfs_arc_cached = true;
    zfs_hide_datasets = false;
  };
}
