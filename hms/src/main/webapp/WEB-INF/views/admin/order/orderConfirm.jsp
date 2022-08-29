<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>사원등록</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/common.css" />
<link rel="stylesheet" type="text/css" href="/config/ajx/calendar.css" />
<style type="text/css">
/*****파일업로드******/
.filebox input[type="file"] {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip:rect(0,0,0,0);
    border: 0;
}

.filebox label {
    display: inline-block;
    padding: 0.3em;
	margin-left:10px
    color: black;
    font-size: 8pt;
    line-height: normal;
    vertical-align: middle;
    background-color: #fdfdfd;
    cursor: pointer;
    border: 1px solid #ebebeb;
    border-bottom-color: #e2e2e2;
    border-radius: .25em;
}

/* named upload */
.filebox .upload-name {
    display: inline-block;
	 /*padding: .5em .75em;*/
    padding: 0.20em;
	 height:15px;
	 font-size: inherit;
	color:#969696;
    font-family: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #f5f5f5;
  border: 1px solid #969696;
  /*border-bottom-color: #e2e2e2;*/
  border-radius: .25em;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
}

 .confirmb {
    display: inline-block;
    padding: 0.20em;
	width:38px;
	margin-left:20px;
    font-size: inherit;
    font-family: inherit;
	color: #fff;
    line-height: normal;
    vertical-align: middle;
    background-color: #2faace;
  border: 1px solid #2faace;
  /*border-bottom-color: #e2e2e2;*/
  border-radius: .25em;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
}


 .cancelb {
    display: inline-block;
    padding: 0.20em;
	width:38px;
	margin-right:5px;
    font-size: inherit;
	color: #fff;
    font-family: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #275e8e;
  border: 1px solid #275e8e;
  /*border-bottom-color: #e2e2e2;*/
  border-radius: .25em;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
}



.filebox.bs3-primary label {
  color: #fff;
    background-color: #d9534f;
    border-color: #d9534f;
}
/*****파일업로드******/
.topgubun{position:absolute;left:230px;top:12px;color:#FFF;}
.topgubun span{display:inline-block;vertical-align:middle;}
#sel_buseo, #sel_position{display:none;}

.wrap{padding:10px 10px 10px 10px;}

#topment, #top_kind{float:left;}

#topment{padding:6px 0 10px 0;font-size:13px;width:571px;}
#topment span{display:table-cell;vertical-align:middle;}
.topment_title{padding-right:10px;}

#mainhead th, #mainhead td, #maincontents td, #maintail th, #maintail td, .left th, .left td { border:1px solid #dbdbdb;}
.btn {padding-top:5px;}

.top_btn, #top_kind{background:url(/fa/Images/Common/subConBg01.gif) repeat-x;color:#FFF;padding:0;height:30px;width:605px;}
#top_kind{padding-bottom:5px;}
.top_btn td, #top_kind td{padding:0;color:#fff;}
.top_span, .top_td{background:url(/fa/Images/Sub/subTap_off.gif) no-repeat;text-align:center;cursor:pointer;}
.top_span{width:76px;}
.top_td{width:65px;}

.tabon{background:url(/fa/Images/Sub/subTap_on.gif) no-repeat;width:65px;text-align:center;cursor:pointer;}
.taboff{background:url(/fa/Images/Sub/subTap_off.gif) no-repeat;width:65px;text-align:center;cursor:pointer;}

.midTab{background:#FFF;}
.midTab td{width:60px;text-align:center;padding:7px 0 5px 0;cursor:pointer}

#debugarea{clear:both;}
#main{float:left;}

#contents{float:left;margin-top:0;padding-left:5px;}
.left th{padding:0 10px 0 10px;height:20px;background:#969696;font-weight:normal;text-align:center;color:#FFF;}
.left td{background:#FFF;height:22px;}
.btn{text-align:center;padding-top:10px;clear:both;}
.number{text-align:right;padding-right:4px;background:#FFF;}

.title_block{font-size:14px;font-weight:bold;padding-bottom:5px;}
.left th, .left td{padding:0 4px 0 4px;}
.left_block{padding-bottom:0;}

.noline00{height:14px;}

.linetitle{background:#546098 !important;color:#FFF;}

#preupload{left:300px; top:62px;}
</style>
<script type="text/javascript" src="/config/jquery-1.11.2.js"></script>
<script language="JavaScript" src="/config/common.js"></script>
<script language="JavaScript" src="/config/ShowHideLayer.js"></script>
<script type="text/javascript" src="/config/CheckDate.js"></script>
<script type="text/javascript" src="/config/httpRequest.js"></script>
<script type="text/javascript" src="/config/ajx/calendar.js"></script>
<script type="text/javascript">

function view_deduc(v){
  if(v==2){// 특고
	  $('deduc_view1_1').style.display='none';
	  $('deduc_view1_2').style.display='none';

	  $('deduc_view2_1').style.display='';
	  $('deduc_view2_2').style.display='';
	  $('deduc_view2_3').style.display='';

  }else{ //예술인
	  $('deduc_view1_1').style.display='';
	  $('deduc_view1_2').style.display='';

	  $('deduc_view2_1').style.display='none';
	  $('deduc_view2_2').style.display='none';
	  $('deduc_view2_3').style.display='none';

	  // 예술인 선택시  산재보험 값 삭제(방탄코딩). 
	  $('insurance').value = '';

  }
}


function fnMove(seq){ 
	target = document.getElementById('div'+seq); // 요소의 id 값이 target이라 가정
	clientRect = target.getBoundingClientRect(); // DomRect 구하기 (각종 좌표값이 들어있는 객체)
	relativeTop = clientRect.top; // Viewport의 시작지점을 기준으로한 상대좌표 Y 값.
} 


//사업소득자 의 사업소득종류가 변할경우 해당 건 처리.
function getJobSearch(obj){
	params="/pay/pay/ajx/input_end.html?mode=job_search&job_code="+obj.value;
	$J.ajax({
		url:params,
		async:true,
		success:function(data){
			v = data.split("::");

			artist = v[0];
			special_employee = v[1];

			job_search_setting(artist, special_employee);
		}
	});
}

function job_input(sub_code , name_txt , main_code , artist , special_employee){
	//console.log(artist+"::"+ special_employee);

	$('job_kind').value=sub_code;
	$('job_kind_txt').value=name_txt;
	$('main_code').value=main_code;

	job_search_setting(artist , special_employee);

}

function job_search_setting(artist , special_employee){
	if($('manager_type1_1')){
			$('manager_type1_1').remove();
	}

	if($('manager_type1_2')){
			$('manager_type1_2').remove();
	}

	if(artist=='Y'){
		$('manager_type1').innerHTML+="<option value='1' id='manager_type1_1'>예술인</option>";
		$('manager_type1').value=$('hidden_manager_type1').value;
	}

	if(special_employee=='Y'){
		$('manager_type1').innerHTML+="<option value='2' id='manager_type1_2'>노무제공자(특고)</option>";
		$('manager_type1').value=$('hidden_manager_type1').value;
	}
}

function job_modiLineColor(ntTR,no , flag){
	var cnt = $('job_kind_etc_cnt').value;

	modiLineColor('ntTR',no,'Y');

	for(var i=1; i<=cnt; i++){
		if(no!=i){
			modiLineColor('ntTR',i,'N');
		}
	}
}


function jikjong_input(jik_code , jik_name , deduc){
	var gubun = $('jik_manager_type').value;

	//$('jikjong_code'+gubun).value = jik_code;
	//$('jikjong_name'+gubun).value = jik_name;
	//$('jikjong_insu'+gubun).value = deduc;
	
	$J('#jikjong_code'+gubun).val(jik_code);
	$J('#jikjong_name'+gubun).val(jik_name);
	$J('#jikjong_insu'+gubun).val(deduc);

}
function jikjong_modiLineColor(ntTR,no , flag){
	var cnt = $('jikjong_kind_etc_cnt').value;

	modiLineColor('ntTR',no,'Y');

	for(var i=1; i<=cnt; i++){
		if(no!=i){
			modiLineColor('ntTR',i,'N');
		}
	}
}



function jikjong_code_get(gubun , uid  ){
	var manager_type =$('manager_type1').value;
	var params = "./ajx/jikjong_kind_etc.php?uid="+uid+"&manager_type="+manager_type;

	$J.ajax({
		url:params , 
		async:true,
		success:function(data){
			$('ajx_content').innerHTML = data;
			$('ajx_div').style.top='145px';
			$('ajx_div').style.left='700px';
			showhideDisplay('ajx_div','inline');

			$('ajxEnter').style.display='none';
			$('ajxCancel').value='닫기(ESC)';

		}
	});
}

function job_kind_sub_get(gubun ,uid , job_kind){
	var params='./ajx/job_kind_etc.php?uid='+uid;
	if(gubun!=''){
		params+='&detail=true';
	}

		//alert(params);
		$J.ajax({
			url: params,
			async: true,
			success:function(data){
				$('ajx_content').innerHTML=data;

				$('ajx_div').style.top='50px';
				$('ajx_div').style.left='200px';
				showhideDisplay('ajx_div','inline');

				//$('ajxEnter').addEventListener("click",jo);//확인(Enter)버튼 이벤트주기
				$('ajxEnter').style.display='none';
				$('ajxCancel').value='닫기(ESC)';
				
				/*
				if(job_kind!=''){
					fnMove(job_kind);
				}
				*/
			}
		});

}

function recreate (code){
	var params = "ajx/main_end.html?mode=recreate&code="+code;
		$J.ajax({
			url: params,
			async: true,
			success:function(data){

				
			}
		});
}

function calc_period(){
	wyy= $('wyy').value;
	wmm = $('wmm').value;
	wdd=$('wdd').value;

	if(wmm.length==1){
		wmm="0"+wmm;
		$('wmm').value = wmm;
	}

	if(wdd.length==1){
		wdd="0"+wdd;
		$('wdd').value = wdd;
	}


	var params ="ajx/main_4.inc?mode=getperiod&wyy="+wyy+"&wmm="+wmm+"&wdd="+wdd+'&Muid='+currMuid;
	$J.ajax({
			url: params,
			async: true,
			success:function(data){
				v = data.split(":");

				//alert(v[0]+v[1]+v[2]);

				$('pyy').value = v[0];
				$('pmm').value = v[1];
				$('pdd').value = v[2];

			}
		});



}

function setMain_2(yy){
	if(confirm("전체사원의 전년도 부양가족상황 전체를\r\n그대로 승계하시겠습니까?")){
		var params='ajx/setMain_2.php?yy='+yy;
		$J.ajax({
			url: params,
			async: true,
			success:function(data){
				//alert("성공");
				selTab(2);
			}
		});


	}
}

function openNationSearch(o){
	if(event.keyCode==13){
		var params='/pay/personnel/ajx/code_nation.html';
		params+='?search='+encodeURIComponent(o.value);
			//alert(params);
			$J.ajax({
				url: params,
				async: true,
				success:function(data){
					$('ajx_content').innerHTML=data;
					$('ajx_div').style.left='450px'
					showhideDisplay('ajx_div','inline');
					$('nt_name_1').focus();				
					$('ajxEnter').addEventListener("click",inputNation);//확인(Enter)버튼 이벤트주기
				}
			});
	}

}
function openNation(o){
	if(event.keyCode==13 || event.keyCode==113){
		var params='ajx/code_nation.html';
		//alert(params);
		$J.ajax({
			url: params,
			async: true,
			success:function(data){
				$('ajx_content').innerHTML=data;
				$('ajx_div').style.left='450px'
				showhideDisplay('ajx_div','inline');
				$('nt_name_0').focus();				
				$('ajxEnter').addEventListener("click",inputNation);//확인(Enter)버튼 이벤트주기
			}
		});
	}
}

chk_health = function (obj){
	if(obj.checked){
		$('tax_health2').checked= true;
	}else{
		$('tax_health2').checked= false;

	}
}

chk_health2 = function(obj){
	if(obj.checked){
		if($('tax_health').checked==false){
			obj.checked=false;
		}
	}
}


var currPopno='';
function moveFocusnt(f,no,L,R){
	if(event.keyCode==13){
		if(no!=0){
			inputNation(no);
		}
	}else{
		moveFocusArrow(f,no,L,R);
		currPopno=no;
	}
}
function inputNation(){
	var no=currPopno;
	$('nation_code').value=$('nt_code_'+no).value;
	$('nation').value=$('nt_name_'+no).value;
	showhideDisplay('ajx_div','none');
}

function getTax(o){

	inputCommaNum(o);

	//if(currMuid){


		var params='ajx/get_tax.html?INPUT_MODE=input&Muid='+currMuid+'&kind_id='+o.id+'&amount='+o.value;

		if(currMuid==''){
			params+='&'+$J("#personbase").serialize(); // serialize() : 입력된 모든Element(을)를 문자열의 데이터에 serialize 한다.
		}

		$J.ajax({
			url: params,
			async: true,
			success:function(data){
				if(o.id=='preyear_pay'){
					$('preyear_tax').value=commaNum(data);
				}else if(o.id=='preyear_pay2'){
					var val=data.split('|');
					$('preyear_tax2').value=commaNum(val[0]);
					$('preyear_tax4').value=commaNum(val[1]);
				}else if(o.id=='preyear_pay3'){
					$('preyear_tax3').value=commaNum(data);
				}
			}
		});
	//}
}

function viewSel(val){
	$('sel_buseo').style.display='none';
	$('sel_position').style.display='none';
	$('list_firstpart').value='';
	$('list_position').value='';
	if(val){
		$('sel_'+val).style.display='inline';
	}else{
		$('sel_buseo').style.display='none';
		$('sel_position').style.display='none';
		$('gubun').value='';
	}
	if(val==''){
		getMain('');
	}
}

function reload(){
	currMuid='';
	currno='';
	for(var i=1; i<=6; i++){
		$('kind'+i).checked=false;
	}
	$('valTab1').value='1';
	$('valTab2').value='1';
	$('valTab3').value='1';
	$('subTab').value='1';
	skind=1;
	getMain('');
}
function chk_all(){
	var numrow=$('numrow').value;
	if($('chkall').checked==false){
		var ck=false;
	}else{
		var ck=true;
	}
	for(var i=1; i<numrow; i++){
		$('chk_'+i).checked=ck;
	}
}
function delsubmit(){
	var Muids='';
	var chk=0;
	var numrow=$('numrow').value;
	for(var i=1; i<numrow; i++){
		if($('chk_'+i).checked==true){
			if($('Mid_'+i).value==''){
				Muids+=$('Muid_'+i).value+'|';
				chk++;
			}else{
				alert("erp관리자는 삭제하실 수 없습니다 (부서등록창 확인).");
				$('chk_'+i).checked=false;

				return;
			}
		}
	}
	if(chk==0){
		window.alert('삭제할 임직원을 선택하세요.');
		return;
	}
	if(!confirm('기존 급여입력자료가 존재하는 사원은 삭제되지 않습니다.\n체크한 사원의 사원정보를 삭제하시겠습니까?\n(erp관리자는 삭제할 수 없습니다.)')){
		return;
	}
	var params='ajx/main_end.html?mode=del&Muids='+Muids;
	//alert(params);
	$J.ajax({
		url: params,
		async: true,
		success:function(data){
			if(data>0){
				window.alert('급여자료가 있어서 삭제하지 못한 사원이 '+data+'명 있습니다.');
			}
			getMain('');
		}
	});
}

function delsub(tn,uid){
	if(!confirm('삭제 하시겠습니까?')){
		return;
	}
	var params='ajx/main_end.html?mode=delsub&tn='+tn+'&uid='+uid;
	//alert(params);
	$J.ajax({
		url: params,
		async: true,
		success:function(data){
			if (data=='ok'){
				getForm01('');	
			}
		}
	});
}

function goReg(){
	if(event.keyCode==13){
		if($('L_firstpart').value==''){
			window.alert('부서를 선택하세요.');
			$('L_firstpart').focus();
			return;
		}
		if($('L_name').value==''){
			window.alert('성명을 입력하세요.');
			$('L_name').focus();
			return;
		}		
		var params = $J("#person_reg").serialize(); // serialize() : 입력된 모든Element(을)를 문자열의 데이터에 serialize 한다.
		//alert(params);
		$J.ajax({
			url: 'ajx/main_1_end.html?insertmode=line',
			type: 'POST',
			data:params,
			success: function (result) {
				//$('debugarea').innerHTML=result;
				//if (result){				
					getMain('');				
					window.alert('등록 되었습니다.');
				//}
			}
		});
	}
}

function writesubmitFront(){
	var params = "/fa/ajx/getSession.php?mode=part_reg";
	$J.ajax({
	    url:params , 
		async:true , 
		success: function(data){
			//alert(data==$('company_id').value);
			console.log(data+"::"+$('company_id').value);

			if(data==$('company_id').value){
				writesubmit('');
			}else{
				alert("다른회사의 ERP가 접속되어 있습니다.");
				location.reload();
			}
			
		}
	});
}

function writesubmit(){

	var pay_change = "no";

		



	


	if($('name').value==''){
		window.alert('성명을 입력하세요.');
		$('name').focus();
		return;
	}
	if($('startdate').value==''){
		window.alert('입사일을 입력하세요.');
		$('startdate').focus();
		return;
	}

	if($('firstpart')){
		if($('firstpart').value==''){
			window.alert('부서를 선택하세요.');
			$('firstpart').focus();
			return;
		}
	}


	if(document.getElementsByName("kind")[4].checked  ){
		if( document.getElementsByName("job_kind")[0].value ==''){
			alert("사업소득종류를 선택하세요.");
			document.getElementsByName("job_kind")[0].focus();
			return;
		}

	}

	
	if(document.getElementsByName("kind")[5].checked){
		if(document.getElementById('job_kind_txt').value==''){
			alert("기타소득종류를 선택하세요.");
			job_kind_sub_get('','','');
			
			return;

		}
	}


	var params = $J("#personbase").serialize(); // serialize() : 입력된 모든Element(을)를 문자열의 데이터에 serialize 한다.
	//alert(params);
	$J.ajax({
		url: 'ajx/main_1_end.html?pay_change='+pay_change,
		type: 'POST',
		data:params,
		success: function (result) {
			if(result.indexOf('ENDDATE_ERR')!=-1){
				txt = result.split("||");

				alert(txt[2]+"월 급여 데이터가 존재합니다.\r\n삭제후 퇴사일을 재입력 바랍니다");

				getMain(txt[1] , currno);
			}else{
				getMain(result,currno);				
				window.alert('저장 되었습니다.');
			}
			
		}
	});
}


function writesubmitFront2(){
	var params = "/fa/ajx/getSession.php?mode=part_reg";
	$J.ajax({
	    url:params , 
		async:true , 
		success: function(data){
			//alert(data==$('company_id').value);
			if(data==$('company_id').value){
				writesubmit2('');
			}else{
				alert("다른회사의 ERP가 접속되어 있습니다.");
				location.reload();
			}
			
		}
	});
}


function writesubmit2(){
	var params = $J("#personbase2").serialize(); // serialize() : 입력된 모든Element(을)를 문자열의 데이터에 serialize 한다.
	//alert(params);
	$J.ajax({
		url: 'ajx/main_end.html',
		type: 'POST',
		data:params,
		success: function (result) {
			//$('debugarea').innerHTML=result;
			if (result=='ok'){
				getForm01('');	
				window.alert('저장 되었습니다.');
			}
		}
	});
}

function writesubmitFront3(tabgbn){
	var params = "/fa/ajx/getSession.php?mode=part_reg";
	$J.ajax({
	    url:params , 
		async:true , 
		success: function(data){
			//alert(data==$('company_id').value);
			if(data==$('company_id').value){
				writesubmit3(tabgbn);
			}else{
				alert("다른회사의 ERP가 접속되어 있습니다.");
				location.reload();
			}
			
		}
	});
}
function writesubmit3(tab){
	var params = $J("#personbase3").serialize(); // serialize() : 입력된 모든Element(을)를 문자열의 데이터에 serialize 한다.
	//alert(params);
	$J.ajax({
		url: 'ajx/main_end.html?mode=end_'+tab,
		type: 'POST',
		data:params,
		success: function (result) {
			//$('debugarea').innerHTML=result;
			if (result=='ok'){
				getForm01('');	
				window.alert('저장 되었습니다.');
			}
		}
	});

	if(tab=='1'){
		uploadPic(tab);
	}
}
function uploadPic(tab){
	var params='ajx/upload.html?Muid='+currMuid;
	//alert(params);
	$J.ajax({
		url: params,
		type: "POST",
		contentType: false,
		processData: false,
		data: function() {
			var data = new FormData();
			data.append("img1", $J("#img1").get(0).files[0]);
			return data;
			// Or simply return new FormData(jQuery("form")[0]);
		}(),
		error: function(_, textStatus, errorThrown) {
			alert("Error");
			console.log(textStatus, errorThrown);
		},
		success: function(response, textStatus) {
			//$('debugarea').innerHTML=response;
			if(response=='ok'){
				getForm01('');
			}
		}
	});
}

function getTop(){
	var params='ajx/main_top.inc?'+getParams();
	$J.ajax({
		url: params,
		async: true,
		success:function(data){
			$('topment').innerHTML=data;
			viewList();
		}
	});
}
function getTopRight(){
	var params='ajx/main_top_right.inc?'+getParams();
	$J.ajax({
		url: params,
		async: true,
		success:function(data){
			$('top_kind').innerHTML=data;
		}
	});
}
function viewManagerSort(sortfield){
	$('sfield').value=sortfield;
	var sortorder=$('sorder').value;
	if(sortorder=='ASC'){
		$('sorder').value='DESC';
	}else{
		$('sorder').value='ASC';
	}
	viewList();
}
function viewList(){
	var params='ajx/list.html?'+getParams();
	params+='&sortfield='+$('sfield').value+'&sortorder='+$('sorder').value;
		//alert(params);
	$J.ajax({
		url: params,
		async: true,
		success:function(data){
			$('main').innerHTML=data;
			if(currno)selRows(currno);

			if($('flag').value!='') {
				selRows($('flag').value);

				
			}
		}
	});
}
currMuid='';
function getForm01(Muid,no,CTuid){
	if(Muid)currMuid=Muid;
	if(no)selRows(no);

	var params='ajx/main_'+skind+'.inc?Muid='+currMuid+'&skind='+skind+'&tab='+$('subTab').value+'&certiTab='+$('certiTab').value+'&list_firstpart='+$('list_firstpart').value;
	params+='&Nkind='+$('Nkind').value;

	//var CTuid=1;
	if(CTuid)params+='&CTuid='+CTuid;
	$J.ajax({
		url: params,
		async: true,
		success:function(data){
			$('contents').innerHTML=data;
			if($('name'))$('name').focus();

			if(document.getElementsByName("job_kind")[0]){
				getJobSearch(document.getElementsByName("job_kind")[0]);
			}
		}
	});
}
function getFormKind(k){
		$('Nkind').value=k;
		getForm01(currMuid,currno);
		$('Nkind').value='';
}
function getMain(Muid,no){
	if(!Muid){
		currMuid='';
		currno='';
	}
	getTop();
	getTopRight();
	//viewList();
	getForm01(Muid,no);
}

function goKind01(all){
	currMuid='';
	currno='';
	if(all=='all'){
		if($('kind0').checked==true){
			var flag=true;
		}else{
			var flag=false;
		}
		for(var i=1; i<=6; i++){
			$('kind'+i).checked=flag;
		}
	}else{
		$('kind0').checked=false;
	}

	getTopRight();
	viewList();
	getForm01('');
}

function resetMain(){
	viewSel();
	$('keyword').value='';
	getMain();
}
function goKeyword(){
	viewSel();
	getMain();
}

function getParams(){
	var params='';
	//구분
	params+='&list_firstpart='+$('list_firstpart').value+'&list_position='+$('list_position').value;
	params+='&keyword='+encodeURIComponent($('keyword').value);

	var kstr='';
	for(var i=1; i<=6; i++){
		if($('kind'+i) && $('kind'+i).checked==true){
			kstr+=i+',';
		}
	}
	if(kstr)params+='&kstr='+kstr;

	params+='&valTab1='+$('valTab1').value;
	params+='&valTab2='+$('valTab2').value;
	params+='&valTab3='+$('valTab3').value;	
	params+='&certiTab='+$('certiTab').value;	

	return params;
}

var currno='';
function selRows(no){
	if(currno){
		ChangeColumnColor($('tr_'+currno),'#FFFFFF');
		if($('valid_'+currno).value=='N')$('tdJumin_'+currno).style.backgroundColor='#f36d8f';
	}
	ChangeColumnColor($('tr_'+no),'#BEEB9F');
	if($('valid_'+no).value=='N')$('tdJumin_'+no).style.backgroundColor='#f36d8f';
	currno=no;
}

function selFormTab(k,n){
	currMuid='';
	currno='';
	changeTab(k,n);
	$('valTab'+k).value=n;

	viewList();
	getForm01('');
}

function changeTab(k,n){
	for(var t=1; t<=3; t++){
		$('tab'+k+'_'+t).className='taboff';
	}
	$('tab'+k+'_'+n).className='tabon';
}

var skind=1;
function selTab(k,tab){
	skind=k;
	if(tab)$('subTab').value=tab;
	getForm01('');
}
function certiTab(tab){
	$('certiTab').value=tab;
	getForm01('');
}

function setMiliForm(){
	if($('mili01').value!=''){
		var flag='';
		if($('mili01').value=='미필'){
			flag=true;
			$('mili05').disabled=false;
		}else if($('mili01').value=='군필'){
			flag=false;
			$('mili05').disabled=true;
		}
		$('mili_sdate').disabled=flag;
		$('mili_edate').disabled=flag;
		$('mili02').disabled=flag;
		$('mili03').disabled=flag;
		$('mili04').disabled=flag;		
	}
}

function selEtc(o){
	var gubun=o.value.substring(0,1);
	if(gubun=='5' || gubun=='6'){
		$('foreigner2').checked=true;
	}else if(gubun<5){
		$('foreigner1').checked=true;
		$('residence1').checked=true;
		$('nation_code').value='KR';
		$('nation').value='대한민국';
	}
}

function getWork_ymd(){
	var sdate=$('sdate').value;
	var edate=$('wyy').value+sprintf($('wmm').value,2)+sprintf($('wdd').value,2);
	if(checkdate(sdate)==true && checkdate(edate)==true){		
		var params='ajx/work_period.html?sdate='+sdate+'&edate='+edate;
		//alert(params);
		$J.ajax({
			url: params,
			async: true,
			success:function(data){
				var period=data.split('|');
				$('pyy').value=period[0];
				$('pmm').value=period[1];
				$('pdd').value=period[2];				
			}
		});
	}
}
function writesubmit_certiFront(){
	var params = "/fa/ajx/getSession.php?mode=part_reg";
	$J.ajax({
	    url:params , 
		async:true , 
		success: function(data){
			//alert(data==$('company_id').value);
			if(data==$('company_id').value){
				writesubmit_certi('');
			}else{
				alert("다른회사의 ERP가 접속되어 있습니다.");
				location.reload();
			}
			
		}
	});
}
function writesubmit_certi(){
	if($('Muid').value==''){
		window.alert('사원을 선택하세요.');
		return;
	}
	if($('purpose').value==''){
		window.alert('용도를 입력하세요.');
		$('purpose').focus();
		return;
	}
	if($('kind').value=='2'){
		if($('sdate_1').value==''){
			window.alert('근무기간을 입력하세요.');
			$('sdate_1').focus();
			return;
		}
		/*
		if($('buseo_1').value==''){
			window.alert('근무부서를 선택하세요.');
			$('buseo_1').focus();
			return;
		}
		*/
	}

	if($('certiTab').value=='3'){
		if($('td_enddate_'+currno).innerHTML==''){
			window.alert('퇴사자를 선택하세요.');
			return;
		}
	}


	var params = $J("#certi_write").serialize(); // serialize() : 입력된 모든Element(을)를 문자열의 데이터에 serialize 한다.
	//alert(params);
	$J.ajax({
		url: 'ajx/main_4_end.html',
		type: 'POST',
		data:params,
		success: function (result) {
			//$('debugarea').innerHTML=result;
			//if (result){				
				//getForm01(currMuid,currno,result);
				$('CTuid').value=result;
				$('btn_CTsave').innerHTML="<img src='/pay/img/labor09.gif' class='disbutton'>";
				$('btn_CTpdf').innerHTML="<img src='/pay/img/labor07.gif' class='enbutton' onClick=\"OpenWindowResize('pdf/certi_new.php?uid="+result+"#toolbar=1','pdf','670','900','0','0','no')\">";
				window.alert('저장 되었습니다.');
			//}
		}
	});
}
function showhideArea(area,o){
	if(area=='jumin2'){
		if(o.checked==true){
			$('area_jumin2').innerHTML=$('jumin2').value;
		}else{
			$('area_jumin2').innerHTML='*******';
		}
	}else{
		if(o.checked==true){
			showhideDisplay('area_'+area,'inline');
		}else{
			showhideDisplay('area_'+area,'none');
		}
	}
	$('btn_CTsave').innerHTML="<img src='/pay/img/labor09.gif' onClick=\"writesubmit_certi()\" class='enbutton'>";
	$('btn_CTpdf').innerHTML="<img src='/pay/img/labor07.gif' class='disbutton'>";
}

function checkDupJumin(){
	var jumin1=$('jumin1').value;
	var jumin2=$('jumin2').value;
	
	var jumin1_h = $('jumin1_h').value;
	var jumin2_h = $('jumin2_h').value;

	if(jumin1&& jumin1_h && jumin2 && jumin2_h){
			if(jumin1==jumin1_h && jumin2==jumin2_h){
				return;
			}
	}


	if(jumin1 && jumin2){
		var params='ajx/main_end.html?mode=jumin&jumin1='+$('jumin1').value+'&jumin2='+$('jumin2').value;
		var Muid=$('Muid').value;
		if(Muid)params+='&Muid='+Muid;
		//alert(params);
		$J.ajax({
			url: params,
			async: true,
			success:function(data){
				if (data){
					//window.alert('같은 주민번호(사원코드 '+data+')가 있습니다.');

					if(confirm('같은 주민번호(사원코드 '+data+')가 있습니다.\n 그래도 사원등록 하시겠습니까?' )){

					}else{
						$('jumin1').value='';
						$('jumin2').value='';
						$('jumin1').focus();
						return;
					}
				}
			}
		});
	}
}

function inputComm(no){
	$('account_bank_code').value=$('code_'+no).value;
	$('account_bank').value=$('name_'+no).value;
	showhideDisplay('ajx_div','none');
	//$('dong_code').focus();
}

var currGubun='';
function viewCommPop(o,filename,gubun){
	if(event.keyCode==13 || event.keyCode==113){
		currGubun=gubun;
		var params='/fa/ajx/'+filename+'.html?mode=open&gubun='+gubun;
		$J.ajax({
			url: params,
			async: true,
			success:function(data){
				if(data){
					$('ajx_content').innerHTML=data;
					//$('ajx_div').style.left='123px';
					showhideDisplay('ajx_div','inline');
					$('name_1').focus();
				}
			}
		});
	}	
}

function viewCommSearch(o,filename,gubun){
//	showLoadingImg();
	var params='/fa/ajx/'+filename+'.html?gubun='+gubun+'&keyword='+encodeURIComponent(o.value);
	$J.ajax({
		url: params,
		async: true,
		success:function(data){
			if(data){
				if(gubun==''){
					$('t_result').innerHTML=data;
				}else if(gubun=='C'){
					$('u_result').innerHTML=data;
				}else{
					$('d_result').innerHTML=data;
				}
				$J("#loadimg").hide();
			}
		}
	});
}


function showIncomeEtc(k){
	$('income_etc_1').style.display='none';
	$('income_etc_2').style.display='none';
	$('income_etc_'+k).style.display='inline';
}

var chk='N';
function chk_all(kind){
	if(!kind)kind='';
	if(kind=='P'){
		var num=$('Pnum').value;
	}else{
		var num=$('numrow').value;
	}
	for(var i=1; i<=num; i++){
		if($(kind+'chk_'+i)){
			if(chk=='N'){
				$(kind+'chk_'+i).checked=true;
			}else{
				$(kind+'chk_'+i).checked=false;
			}
		}
	}
	if(chk=='N'){
		chk='Y';
	}else{
		chk='N';
	}
}
function inputExcel(){	
	$('submit').disabled=true;
	var num=$('Pnum').value;
	var chk=0;
	for(var i=1; i<num; i++){
		if($('Pchk_'+i)){
			if($('Pchk_'+i).checked==true){
				chk++;
			}
		}
	}
	if(chk==0){
		window.alert('선택된 항목이 없습니다.');
		$J("#loadimg").hide();
		return false;
	}
	
	var frm=document.inputSupply;
	frm.action='excel/upload.html?mode=input';
	frm.submit();
}


getExcelFile = function(){
	var params = getParams();
	location.href="excel/personnel.html?mode=excel"+params;
}

function applyPay(){
	if(!confirm('인사급여메뉴 신청 하시겠습니까?')){
		return;
	}
	location.href='/DB/pay/apply.html';
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000">

<div class="comm_top">
	<ul>
		<li class="comm_title_text2"><img src="/fa/Images/comm/logo.png"></li>
		<li class="comm_top_bg"><span class="comm_title_text" style="cursor:pointer!important" onclick="window.open('/pay/personnel/main.html','about:blank','')">사원등록</span></li>
	</ul>
</div>
<div class="topgubun">
	<span>구분</span>
	<span style="width:160px">
		<span>
			<select name="gubun" id="gubun" onChange="viewSel(this.value)">
				<option value="">전체</option>
				<option value="buseo">부서별</option>
				<option value="position">직위별</option>
			</select>
		</span>
		<span id="sel2">
			<div id="sel_buseo">
				<select name="list_firstpart" id="list_firstpart" onChange="getMain()">
					<option value="">전체</option>
<option value='10'>진료실</option><option value='12'>방사선실</option><option value='13'>물리치료실</option><option value='14'>간호부</option><option value='15'>원무부</option><option value='16'>잡부</option><option value='ㅇㅇ'>ㅇㅇㅇ</option>				</select>
			</div>
			<div id="sel_position">
				<select name="list_position" id="list_position" onChange="getMain()"> 
					<option value="">전체</option>
<option value='0' selected>--</option><option value='1'>원장</option><option value='2'>대표</option><option value='3'>실장</option><option value='4'>사원</option><option value='5'>과장</option><option value='6'>ㅏ</option><option value='7'>보조강사</option>				</select>
			</div>
		</span>
	</span>
	<span>
		<input type="text" id="keyword" style="width:100px">
		<input type="button" value="조회" onClick="goKeyword()">
		<input type="button" value="취소" onClick="resetMain()">
	</span>
	<span style="width:72px"></span>
	<span style="padding-right:21px"><img src="/pay/img/pay_02.gif" onClick="reload()" class="enbutton"></span>
	<span>
		<img src="/pay/img/pay_01.gif" onClick="delsubmit()" class="enbutton">

				<img src="/pay/img/pay11.gif" onClick="OpenWindow('/pay/pay/input_new.html','PyInput1','1215','760','0','0','no')" class="enbutton">
		<img src="/pay/img/pay12.gif" onClick="OpenWindow('/fa/buseo.html','FaBuseo','850','570','0','0','no')" class="enbutton">
		<img src="/pay/img/pay13.gif" onClick="OpenWindow('/fa/setup.html?currTab=4','FaSetup','640','550','0','0','no')" class="enbutton">
				<img src="/pay/img/pay14.gif" onclick="getExcelFile()" class="enbutton">
		<img src="/pay/img/pay15.gif" onClick="showExcelUpload(320,120)"  class="enbutton">


				<a href="/pay/main.html" target="_blank"><img src="/pay/img/pay09.gif"></a>
			</span>
</div>


<div class="wrap">

<div id="topmenu">
	<div id="topment"></div>
	<div id="top_kind"></div>
</div>

<div id="debugarea"></div>
<div id="main"></div>

<div id="contents"></div>

</div><!--wrap-->

<div id="calendar"></div>

<input type="hidden" id="valTab1" value="1">
<input type="hidden" id="valTab2" value="1">
<input type="hidden" id="valTab3" value="1">

<input type="hidden" id="subTab" value="1">
<input type="hidden" id="certiTab" value="1">

<input type="hidden" id="sfield" value="name">
<input type="hidden" id="sorder" value="ASC">

<input type="hidden" id="Nkind" value="">

<script>
 function upfile(input){
  var fileTarget = $J('.filebox .upload-hidden');

	fileTarget.on('change', function(){
		console.log('fileTarget');
        if(window.FileReader){
            var filename = $J(this)[0].files[0].name;
        } else {
            var filename = $J(this).val().split('/').pop().split('\\').pop();
        }
		console.log(filename);
        $J(this).siblings('.upload-name').val(filename);
    });
}
//}); 
//onclick="document.getElementById('datafile1').click();" for="datafile1"

function save_tax_yn(v){
	var params ='/pay/labor/bat/save.php?mode=tax_yn&value='+v;
	$J.ajax({
		url: params,
		async: true,
		success:function(data){
		}
	});
}

</script>

<form name="excelup">
<div id="excel_upload">
	<div>
		<span class="filebox bs3-primary fa-ul"   style="margin-left:5px" onclick="upfile()" for="datafile1">
			<input onclick="document.getElementById('datafile1').click();" for="datafile1" for="datafile1" type="text"  id="upload_name" class="upload-name" value="파일선택"  style="width:500px"  >
			<label   onclick="upfile()" for="datafile1"><i class="fa fa-upload "> 찾기</i></label> 
		<input type="file" name="datafile1" id="datafile1" class="upload-hidden"  > <br/>
		<!--<input type="button" value="확인" class="btn_small btn btn-info btn-xs active confirmb" onClick="">-->
		</span><!--class="btn_small"-->
		<!--<input type="file" name="datafile1" id="datafile1" style="width:500px">-->
	</div>

	<div class="excel_upload_but">
		
		
					<input type="button" value="업로드" onClick="uploadExcel('excel/upload.html')">
		
		<input type="button" value="취소" onClick="showhideDisplay('excel_upload','none')">
	</div>
</div>
</form>

<div id="preupload"></div>

<div id="ajx_div">
	<div id="ajx_content"></div>
	<div id="ajxModiMent"></div>
	<div class="ajx_but">
		<input type="button" style="display:none" id="ajxEnter2">
		<input type="button" value="확인(Enter)" id="ajxEnter">
		<input type="button" value="취소(Esc)" id="ajxCancel" onClick="showhideDisplay('ajx_div','none')">	</div>
</div>

<div id="loadimg" style="display:none;"><img src="/img/ajax-loader.gif"></div>
<script type="text/javascript">
getMain('');

document.onkeydown = function() {  
	if (event.keyCode == 27) {
		showhideDisplay('ajx_div','none');	
	}
};
</script>

</body>
</html>

<input type="hidden" id="company_id" name = "company_id" value="ssabutest">


