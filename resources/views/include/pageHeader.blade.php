<div class="page-title-area">
    <div class="row align-items-center">
        <div class="col-sm-6">
            <div class="breadcrumbs-area clearfix">
                <h4 class="page-title pull-left">@yield('pageTittle')</h4>
            </div>
        </div>
        <div class="col-sm-6 clearfix">
            <div class="user-profile pull-right">
                <!-- <img class="avatar user-thumb" src="assets/images/author/avatar.png" alt="avatar"> -->
                <h4 class="user-name dropdown-toggle" data-toggle="dropdown">{{Session::has('userData')?SESSION::get('userData')['userData']['fullName']:''}} <i class="fa fa-angle-down"></i></h4>
                <div class="dropdown-menu">
                    <!-- <a class="dropdown-item" href="#">Message</a> -->
                    <a class="dropdown-item" data-toggle="modal" data-target="#editPass">Settings</a>
                    <a class="dropdown-item" href="/logout">Log Out</a>
                </div>
            </div>
        </div>
    </div>
    @if(Session::has('error'))
    <div style="margin:10px;" class="alert alert-{{Session::get('error')?'danger':'success'}} alert-dismissible fade show" role="alert">
      {{Session::get('message')}}
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
  </br>
    @endif
</div>
