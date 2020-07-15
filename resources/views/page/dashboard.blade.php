 @extends('index')

 @section('pageTittle','Dashboard')
 @section('webTittle','Dashboard')

 @section('content')
 <div class="main-content-inner">
     <!-- sales report area start -->
     <div class="sales-report-area mt-5 mb-5">
         <div class="row">
             <div class="col-md-6">
                 <div class="single-report mb-xs-30">
                     <div class="s-report-inne">
                       <div id="siswa-ekskul" width="100%"></div>
                     </div>

                 </div>
             </div>
             <div class="col-md-6">
                 <div class="single-report mb-xs-30">
                   <div id="siswa-perkelas" width="100%"></div>
                 </div>
             </div>
         </div>
     </div>
 </div>
 <script type="text/javascript">
 $(document).ready(function(){
   $.get('/api/siswa/prc',function(d){
     console.log(d);
     parsePieChart (d)
   })
   $.get('/api/siswa/kls',function(d){
     console.log(d);
     parseBarChart (d)
   })
 })

 function parsePieChart(d){
   Highcharts.chart('siswa-ekskul', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Presentasi Siswa yang Mengikuti Ekskul'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    accessibility: {
        point: {
            valueSuffix: '%'
        }
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            }
        }
    },
    series: [{
        name: 'Total Siswa',
        colorByPoint: true,
        data: [{
            name: 'Mengikuti Ekskul',
            y: parseInt(d.isEkskul),
            color: "#ADFF2F"
        },
        {
            name: 'Tidak Mengikuti Ekskul',
            y: parseInt(d.nonEkskul),
            color: "#FF0000"
        }]
    }]
  });
 }

 function parseBarChart(d){
   arrD = [];
   cat = [];
   $.each(d,function(){
     arrD.push(
       {
           name: this.nama,
           colorByPoint: true,
           data: [parseInt(this.isEkskul)]
       })
     cat.push(this.nama)
   })
   Highcharts.chart('siswa-perkelas', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'column'
    },
    title: {
        text: 'Siswa Mengikuti Ekskul Per Kelas'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    colors: ['#058DC7', '#50B432', '#ED561B', '#DDDF00', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4'],
    xAxis: {
        categories:cat
    },
    accessibility: {
        point: {
            valueSuffix: '%'
        }
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            }
        }
    },
    series: arrD
  });
 }
 </script>
@endsection
