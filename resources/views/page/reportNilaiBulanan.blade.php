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
            <h5 class="card-header">Report Ekskul Bulanan</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-sm-12">
                  <h1 class="text-center">Nilai Ekstrakulikuler {{$dataEkskul->nama}} </h1>
                </div>
              </div>

                <form class="" action="/report/nilai/bulanan" method="post">
                  @csrf
                  <input type="hidden" name="id_ekskul" value="{{$dataEkskul->id_ekskul}}">
                  <div class="row">

                    <div class="col-sm-4">
                      <select class="form-control" name="tahun">
                        <option value="">--Pilih Tahun Pelajaran--</option>
                        <option value="2018">2017-2018</option>
                        <option value="2019">2018-2019</option>
                        <option value="2020">2019-2020</option>
                        <option value="2021">2020-2021</option>
                        <option value="2022">2021-2022</option>
                      </select>
                    </div>
                    <div class="col-sm-4">
                      <button type="submit" class="btn btn-success col-12 btn-sm" name="button">Lihat</button>
                    </div>
                  </div>
                </form>

            </br>
              <div class="table-responsive">
                  <table class="table">
                      <thead class="bg-light">
                          <tr>
                              <th class="text-center" rowspan="3">#</th>
                              <th class="text-center" rowspan="3">Nama Siswa</th>
                              <th class="text-center" rowspan="3">Kelas</th>
                              <th class="text-center" colspan="16">Semester</th>
                          </tr>
                          <tr>
                            <th class="text-center" colspan="7">Ganjil</th>
                            <th class="text-center" colspan="7">Genap</th>
                            <th colspan="2">&nbsp</th>
                          </tr>
                          <tr>
                            <th class="text-center" >Juli</th>
                            <th class="text-center" >Ags</th>
                            <th class="text-center" >Sep</th>
                            <th class="text-center" >Okt</th>
                            <th class="text-center" >Nov</th>
                            <th class="text-center" >Des</th>
                            <th class="text-center" >Total</th>
                            <th class="text-center" >Jan</th>
                            <th class="text-center" >Feb</th>
                            <th class="text-center" >Mar</th>
                            <th class="text-center" >Apr</th>
                            <th class="text-center" >Mei</th>
                            <th class="text-center" >Jun</th>
                            <th class="text-center" >Total</th>
                            <th class="text-center" >G. Total</th>
                            <th class="text-center" >Rata-Rata</th>
                          </tr>
                      </thead>
                      <tbody>
                        @php($i=1)
                        @php($z=1)
                        @php($total=0)

                        @if(isset($dataReport))
                          @php($NdataReport = json_decode(json_encode($dataReport),true) )
                          @foreach($NdataReport as $data)
                          <tr>
                            <td>{{$z++}}</td>
                            <td>{{$data['nama_siswa']}}</td>
                            <td>{{$data['kelas']}}</td>
                            @php($gTotal=0)
                            @for($i=0;$i<12;$i++)

                            @php($total=$total+$data[($i+1)])
                             <th>{{$data[($i+1)]==0?'':$data[($i+1)]}}</th>
                             @if($i==5||$i==11)
                              <th>{{$total}}</th>
                              @php($gTotal=$gTotal+$total)
                              @php($total=0)
                             @endif
                            @endfor
                            <th>{{$gTotal}}</th>
                            <th>{{number_format($gTotal/12,2)}}</th>
                          </tr>
                          @endforeach
                        @endif
                      </tbody>
                  </table>
              </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end recent orders  -->
</div>
<script type="text/javascript">
  $('.btn-hadir').click(function(){
    var btnHadir = $(this)
    data = {
      id_siswa : $(this).data('idsiswa'),
      id_jadwal : $(this).data('idjadwal'),
      id_pel : $(this).data('idpel'),
      id_absen : $(this).data('idabsen'),
      status : $(this).data('status')
    }
    if (data.id_absen!="") {
      $.ajax({
        type: "POST",
        url: '/api/absen/out',
        data: data,
        success: function(res){
          console.log(res);
          if (res.error) {
            alert(res.message)
            return
          }
          if (btnHadir.hasClass('btn-success')) {
            btnHadir.text('Tidak Hadir')
            btnHadir.data('status',res.params.status)
            btnHadir.removeClass('btn-success').addClass('btn-danger')
          } else {
            btnHadir.text('Hadir')
            btnHadir.data('status',res.params.status)
            btnHadir.removeClass('btn-danger').addClass('btn-success')
          }

        }
      });
    } else {
      $.ajax({
        type: "POST",
        url: '/api/absen/in',
        data: data,
        success: function(res){
          console.log(res);
          if (res.error) {
            alert(res.message)
            return
          }
          if (btnHadir.hasClass('btn-success')) {
            btnHadir.text('Tidak Hadir')
            btnHadir.data('idabsen',res.params.id_absen)
            btnHadir.data('status',res.params.status)
            btnHadir.removeClass('btn-success').addClass('btn-danger')
          } else {
            btnHadir.text('Hadir')
            btnHadir.removeClass('btn-danger').addClass('btn-success')
          }

        }
      });
    }

  })
</script>
@endsection
