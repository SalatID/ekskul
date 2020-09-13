 @extends('index')

 @section('pageTittle','Master Siswa')
 @section('webTittle','Siswa')

 @section('content')


<div class="row">
    <!-- ============================================================== -->

    <!-- ============================================================== -->

                  <!-- recent orders  -->
    <!-- ============================================================== -->
    <div class="col-xl-12 col-lg-12 col-md-6 col-sm-12 col-12">
        <div class="card">
            <h5 class="card-header">Siswa</h5>
            <div class="card-body">
				<div class="row">
					<div class="col-lg-12">
						<a href="#" class="btn btn-success float-right m-3" data-toggle="modal" data-target="#addSiswa"> Tambah Siswa </a>
					</div>
				</div>
                <div class="table-responsive">
                    <table class="table">
                        <thead class="bg-light">
                            <tr>
                                <th class="text-center">#</th>
                                <th class="text-center">NIS</th>
                                <th class="text-center">Nama Siswa</th>
                                <th class="text-center">Tempat/Tanggal Lahir</th>
                                <th class="text-center">Alamat</th>
                                <th class="text-center">Opsi</th>
                            </tr>
                        </thead>
                        <tbody>
                          @php($i=1)
                          @foreach($dataSiswa as $data)
                            <tr>
                                <td class="text-center">{{($i++)}}</td>
                                <td class="text-center">{{$data->nis}}</td>
                                <td class="text-center">{{$data->nama_siswa}}</td>
                                <td class="text-center">{{$data->tempat_lahir}}, {{$data->tgl_lahir}}</td>
                                <td class="text-center">{{$data->alamat}},{{ucwords(strtolower($data->kota_nm))}}, {{ucwords(strtolower($data->prov_nm))}}, {{$data->kode_pos}}</td>
                                <td class="text-center">
                                  <a href="/detailSiswa?id={{$data->id}}" class="btn btn-primary btn-rounded btn-xs"name="button">
                                    <i class="fa fa-list-alt"></i>
                                  </a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end recent orders  -->


</div>

<!-- Modal -->
<div class="modal fade" id="addSiswa" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Siswa</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="post" action="/tambahSiswa" id="tambahSiswa">
          @csrf
          <div class="row">
    				<div class="form-group col-sm-6">
    					<<label>NIS</label>
      				<input type="number" name="nis" class="form-control" placeholder="NIS">
    				</div>
    				<div class="form-group  col-sm-6">
              <label>Email</label>
      				<input type="email" name="email" class="form-control" placeholder="Email">
    				</div>
    			</div>
          <div class="row">
    				<div class="form-group col-sm-6">
    					<label>NIPD</label>
              <input type="number" name="nipd" class="form-control" placeholder="NIPD">
    				</div>
    				<div class="form-group  col-sm-6">
    					<label>NISN</label>
    					<input type="number" name="nisn" class="form-control" placeholder="NISN">
    				</div>
    			</div>
          <div class="row">
    				<div class="form-group col-sm-6">
    					<label>Nama Siswa</label>
              <input type="text" name="nama_siswa" class="form-control" placeholder="Nama Siswa">
    				</div>
    				<div class="form-group  col-sm-6">
    					<label>Jenis Kelamin</label>
    					<select class="form-control" name="jns_kel">
                <option value="">--Pilih Jenis Kelamin--</option>
                <option value="L">L</option>
                <option value="P">P</option>
              </select>
    				</div>
    			</div>
          <div class="row">
    				<div class="form-group col-sm-6">
    					<label>Kelas</label>
              <select class="form-control" name="id_kelas">
                <option value="">--Pilih Kelas--</option>
                @foreach($dataKelas as $data)
                <option value="{{$data->id_kelas}}">{{$data->nama}}</option>
                @endforeach
              </select>
    				</div>
    				<div class="form-group  col-sm-6">
              <label>Kode Pos</label>
      				<input type="number" name="kode_pos" class="form-control" placeholder="Kode Pos">
    				</div>
    			</div>
          <div class="row">
    				<div class="form-group col-sm-6">
    					<label>Tempat Lahir</label>
              <input type="text" class="form-control" name="tempat_lahir" value="">
    				</div>
    				<div class="form-group  col-sm-6">
    					<label>Tanggal Lahir</label>
    					<input type="date" class="form-control" name="tgl_lahir" value="">
    				</div>
    			</div>
    			<div class="row">
    				<div class="form-group col-sm-6">
    					<label>Provinsi</label>
    					<select class="form-control" name="id_provinsi">
    						<option>-- Pilih Provinsi --</option>
                @foreach($dataProvinsi as $data)
                <option value="{{$data->id_provinsi}}">{{$data->nama}}</option>
                @endforeach
    					</select>
    				</div>
    				<div class="form-group  col-sm-6" >
    					<label>Kota</label>
    					<select class="form-control" name="id_kota" disabled>
    						<option>-- Pilih Kota --</option>
    					</select>
    				</div>
    			</div>
    			<div class="form-group">
    				<label>Alamat</label>
    				<textarea class="form-control" name="alamat">
    				</textarea>
    			</div>
          <hr>
    		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success" onclick="$('#tambahSiswa').submit()">Save changes</button>
      </div>
    </div>
  </div>
</div>
@endsection
