@extends('index')

@section('pageTittle','Master Ekskul')
@section('webTittle','Ekskul')

@section('content')


<div class="row">
   <!-- ============================================================== -->

   <!-- ============================================================== -->

                 <!-- recent orders  -->
   <!-- ============================================================== -->
   <div class="col-xl-12 col-lg-12 col-md-6 col-sm-12 col-12">
       <div class="card">
           <h5 class="card-header">Nilai</h5>
           <div class="card-body">
             <div class="row">
               <div class="col-sm-12">
                 <ul class="nav">
                  <!-- <li class="nav-item">
                    <a class="nav-link btn btn-secondary btn-rounded" data-toggle="tab" href="#siswa" id="tabSiswa">Siswa</a>
                  </li> -->
                  <li class="nav-item">
                    <a class="nav-link btn btn-secondary btn-rounded" data-toggle="tab" href="#bulanan" id="tabBilanan">Bulanan</a>
                  </li>
                </ul>
               </div>
             </div>
           </br>
             <div class="row">
               <div class="col-sm-12">
                 <div class="tab-content">
                    <!-- <div id="siswa" class="tab-pane fade in ">
                      <div class="table-responsive">
                          <table class="table">
                              <thead class="bg-light">
                                  <tr>
                                      <th class="text-center">#</th>
                                      <th class="text-center">Nama Ekskul</th>
                                      <th class="text-center">Tanggal Latihan</th>
                                      <th class="text-center">Action</th>
                                  </tr>
                              </thead>
                              <tbody>
                                @php($i=1)
                                @foreach($dataEkskul as $data)
                                  <tr>
                                    <td class="text-center">{{($i++)}}</td>
                                    <td class="text-center">{{$data->nama}}</td>
                                    <td class="text-center">{{$data->hari}}, {{$data->tglLatihan}} - {{$data->starting_hour}} s.d {{$data->finishing_hour}}</td>
                                    <td class="text-center">
                                      <a href="/report/absen/siswa?id_jad={{$data->id_jadwal}}&id_ekskul={{$data->id_ekskul}}&tgl_latihan={{$data->tglLatihan2}}" class="btn btn-success">View</a>
                                    </td>
                                @endforeach
                              </tbody>
                          </table>
                      </div>
                    </div> -->
                    <div id="bulanan" class="tab-pane fade">
                      <div class="table-responsive">
                          <table class="table">
                              <thead class="bg-light">
                                  <tr>
                                      <th class="text-center">#</th>
                                      <th class="text-center">Nama Ekskul</th>
                                      <th class="text-center">Alamat Sekretariat</th>
                                      <th class="text-center">Telepon</th>
                                      <th class="text-center">Tanggal Gabung</th>
                                      <th class="text-center">Action</th>
                                  </tr>
                              </thead>
                              <tbody>
                                @php($i=1)
                                @foreach($listEkskul as $data)
                                  <tr>
                                    <td class="text-center">{{($i++)}}</td>
                                    <td class="text-center">{{$data->nama}}</td>
                                    <td class="text-center">{{$data->alamat}}</td>
                                    <td class="text-center">{{$data->telepon}}</td>
                                    <td class="text-center">{{$data->tgl_gabung}}</td>
                                    <td class="text-center">
                                      <a href="/report/nilai/bulanan?id_ekskul={{$data->id_ekskul}}" class="btn btn-success">View</a>
                                    </td>
                                  </tr>
                                @endforeach
                              </tbody>
                          </table>
                      </div>
                    </div>
                  </div>
                </div>
               </div>

            </div>

           </div>
       </div>
   </div>
   <!-- ============================================================== -->
   <!-- end recent orders  -->


</div>
<script type="text/javascript">
$(document).ready(function(){
  $('#tabBilanan').click()
})

</script>
@endsection
