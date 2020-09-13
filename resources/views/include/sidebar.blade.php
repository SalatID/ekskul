<div class="sidebar-menu">
    <div class="sidebar-header">
        <div class="logo">
            <a href="index.html" style="text-decoration :none;"><h4 style="color: white;">Al-Ijtihad</h4></a>
        </div>
    </div>
    <div class="main-menu">
        <div class="menu-inner">
            <nav>
                <ul class="metismenu" id="menu">
                    <li><a href="/dashboard"><i class="ti-receipt"></i> <span>Dashboard</span></a></li>
                    @if(Session::has('userData'))
                      @if(SESSION::get('userData')['userData']['level']==1)
                    <li>
                        <a href="javascript:void(0)" aria-expanded="true"><i class="ti-dashboard"></i><span>Master</span></a>
                        <ul class="collapse">
                            <li><a href="/siswa">Siswa</a></li>
                            <li><a href="/kelas">Kelas</a></li>
                            <li><a href="/guru">Guru</a></li>
                            <li><a href="/ekskul">Ekskul</a></li>
                        </ul>
                    </li>
                      @endif
                    @endif
                    @if(Session::has('userData'))
                      @if(SESSION::get('userData')['userData']['level']!=3)
                    <li>
                        <a href="javascript:void(0)" aria-expanded="true"><i class="ti-dashboard"></i><span>Ekskul</span></a>
                        <ul class="collapse">
                            <li><a href="/ekskul/absen">Absen</a></li>
                            <li><a href="/ekskul/nilai">Nilai</a></li>
                        </ul>
                    </li>
                    @endif
                  @endif
                    <li>
                        <a href="javascript:void(0)" aria-expanded="true"><i class="ti-layout-sidebar-left"></i><span>Laporan
                            </span></a>
                        <ul class="collapse">
                          <li><a href="/report/absen">Absen</a></li>
                          <li><a href="/report/nilai">Nilai</a></li>
                        </ul>
                    </li>
                    <li><a href="/keluhan"><i class="ti-receipt"></i> <span>Keluhan</span></a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>
