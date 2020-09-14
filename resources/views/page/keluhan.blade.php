 @extends('index')

 @section('pageTittle','Master Keluhan')
 @section('webTittle','Keluhan')

 @section('content')


<div class="row">
    <!-- ============================================================== -->

    <!-- ============================================================== -->

                  <!-- recent orders  -->
    <!-- ============================================================== -->
    <div class="col-xl-12 col-lg-12 col-md-6 col-sm-12 col-12">
        <div class="card">
            <h5 class="card-header">Keluhan</h5>
            <div class="card-body">
				<div class="row">
					<div class="col-lg-12">
            @if(SESSION::get('userData')['userData']['level']!=1)
						<a href="#" class="btn btn-success float-right m-3 btn-add" data-toggle="modal" data-target="#addKeluhan"> Tambah Keluhan </a>
            @endif
					</div>
				</div>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead class="bg-light">
                            <tr>
                                <th class="text-center">#</th>
                                <th class="text-center">Keluhan</th>
                                <th class="text-center">Feedback</th>
                                <th class="text-center">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                          @php($i=1)
                          @foreach($dataKeluhan as $data)
                            <tr>
                              <td class="text-center">{{($i++)}}</td>
                              <td>{{$data->keluhan}}</td>
                              <td>
                                @if(SESSION::get('userData')['userData']['level']!=1)
                                {{$data->feedback}}
                                @else
                                <textarea name="feedback" class="form-control" {{$data->status==2?'disabled':''}}>{{$data->feedback}}</textarea>
                                <button type="button" class="btn btn-success btn-sm btn-rounded btn-feedback" data-id="{{$data->id_keluhan}}">Simpan</button>
                                @endif
                              </td>
                              <td class="text-center">
                                @if(SESSION::get('userData')['userData']['level']!=1)
                                <i class="badge badge-{{($data->status==0?'primary':($data->status==1?'warning':'success'))}}">{{($data->status==0?'Terkirim':($data->status==1?'Diproses':'Selesai'))}}</i>
                                @else
                                  <select class="form-control" name="status" data-id="{{$data->id_keluhan}}" {{$data->status==2?'disabled':''}} id="statusKeluhan">
                                    <option value="">status</option>
                                    <option value="0" {{$data->status==0?'selected':''}}>Terkirim</option>
                                    <option value="1" {{$data->status==1?'selected':''}}>Diproses</option>
                                    <option value="2" {{$data->status==2?'selected':''}}>Selesai</option>
                                  </select>
                                @endif
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
<div class="modal fade" id="addKeluhan" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal-tittle">Tambah Keluhan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="post" action="/tambahKeluhan" id="tambahKeluhan">
          @csrf
          <div class="form-group">
    				<label>Keluhan</label>
    				<textarea name="keluhan" class="form-control" rows="8" cols="80"></textarea>
    			</div>

    		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success" onclick="$('#tambahKeluhan').submit()">Save changes</button>
      </div>
    </div>
  </div>
</div>


<script type="text/javascript">  
  $('select[name="status"]').change(function(){
    $.get('/keluhan/status?id_keluhan='+$(this).data('id')+'&status='+$(this).val(),function(data){
      console.log(data);
      if (!data.error) {
        location.reload()
        return
      }
      alert(data.message)
    })
  })

  $('.btn-add').click(function(){
    $('#tambahKeluhan').attr('action','/tambahKeluhan')
    $('#modal-tittle').text('Tambah Keluhan')
    $('#tambahKeluhan')[0].reset()

  })
  $('.btn-feedback').click(function(){
    $.ajax({
      type: "POST",
      url: '/api/keluhan/feedback',
      data: {feedback : $('textarea[name="feedback"]').val(),"id_keluhan":$(this).data("id")},
      success: function(data){
        if (!data.error) {
          location.reload()
          return
        }
        alert(data.message)
      }
    });
  })
</script>
@endsection
