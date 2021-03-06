<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>KCD Web Service</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.css/">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap-select.min.css">
    <link rel="stylesheet" type="text/css" href="/static/css/headerMenuCss.css">
    <link rel="stylesheet" type="text/css" href="/static/css/kcdWebService_style.css">
</head>
<body>
<%--<%@ include file="/WEB-INF/jsp/header/detailHeader.jsp" %>--%>
<input type="text" id="sctId" hidden>
<div class="container-fluid content" id="mediListPage">
    <div class="alert alert-primary" role="alert">
        <div class="pull-left">
            <button class="btn btn-lg btn-danger detailRoutingBtn" id="mediList_prev" data-btntype="prev"><<<<</button>
        </div>
        <div style="margin-left: 135px;margin-right: 135px;display: inline-block;">
           <div>
               <a href="/">메인으로</a>
           </div>
            <input type="hidden" value="${mapVer}" id="mapVer">
            <span><b>KD코드 : </b><span id="kdCd">${kdCd}</span></span>
            <div>
                <div><b>한글명 : </b><span id="mediKor"></span></div>
                <div><b>영문명 : </b><span id="mediEng"></span></div>
            </div>
        </div>
        <div class="pull-right">
            <button class="btn btn-lg btn-danger detailRoutingBtn" id="mediList_next" data-btntype="next">>>>></button>
        </div>
    </div>
    <div class="row">
        <div class="alert">
            <div>
            </div>
        </div>
    </div>
    <div class="row">
        <table class="table table-striped kcdDetailTableCss" id="mediDetailTable">
            <thead>
                <tr>
                    <th scope="col">Core Concept</th>
                    <th scope="col">Concept Name</th>
                    <th scope="col">Core Map CD</th>
                    <th scope="col" width="20%">Attribute&Value</th>
                    <th scope="col">Update Time</th>
                    <th>
                        전체선택&nbsp;&nbsp;
                        <input type="checkbox" id="mediAllSelect">
                    </th>
                    <th>
                        속성 추가
                    </th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
        <div id="removeBtnDiv" class="save-btn-div">
            <button id="mediRemoveBtn" class="btn btn-lg btn-danger" disabled onclick="deleteMediList_req()">삭제</button>
        </div>
    </div>
    <div class="alert alert-primary" role="alert">
        <h4 style="display: inline-block; margin-bottom: 20px;">search menu</h4> <button class="btn btn-warning" onclick="medi_autoRuleSet();">약제 룰 기반 검색</button>
        <div>
            <div>
                <span>
                    <label for="mediEcl"><b>ecl : </b></label>
                    <input type="text" id="mediEcl">
                </span>

                <span class="margin-left-20">
                    <label for="medi_medicalProduct">Medical Product : </label>
                    <input type="radio" name="mediDefaultRule" id="medi_medicalProduct" value="<763158003" checked>
                </span>

                <span class="margin-left-20">
                    <label for="medi_productBase">Product base : </label>
                    <input type="radio" name="mediDefaultRule" id="medi_productBase" value="<350101008" >
                </span>

                <span class="margin-left-20">
                    <label for="medi_substance">Substance : </label>
                    <input type="radio" name="mediDefaultRule" id="medi_substance" value="<105590001" >
                </span>
            </div>
            <div>
                <label for="mediTerm"><b>term : </b></label>
                <input type="text" id="mediTerm" style="width: 500px;">
                <%--
                <label for="mediSynonym" style="margin-left: 20px;"><b>동의어 : </b></label>
                <select class="form-control" name="" id="mediSynonym" style="display: inline-block; width: 700px;">
                </select>
                --%>
                <label for="mediSearchTermSelect" style="margin-left: 20px;"><b>search term : </b></label>
                <select class="form-control" name="" id="mediSearchTermSelect" style="display: inline-block; width: 700px;">
                </select>
            </div>
            <div>
                <button class="btn btn-lg btn-primary" onclick="medi_search_req()">Search</button> &nbsp;&nbsp;|&nbsp;&nbsp;
                <%--<button class="btn btn-lg btn-primary" onclick="button_medi_autoRuleSet()">룰 기반 검색</button>&nbsp;&nbsp;|&nbsp;&nbsp;--%>
                <button class="btn btn-lg btn-primary" onclick="medi_similaritySearch()">유사도 기반조회</button> |
                <div id="" class="searchAlert displayNone alertCss">
                    <span>
                        검색이 완료 되었습니다.
                    </span>
                </div>
                <button id="mediSaveBtn" class="btn btn-lg btn-info pull-right" disabled onclick="medi_saveBtn_req()">저장</button>
            </div>
        </div>
    </div>
    <div class="row" id="mediSearchResultTableDiv">
        <table class="table table-striped" id="mediSearchResultTable">
            <thead>
                <tr>
                    <th>Concept Id</th>
                    <th>Term</th>
                    <th class="autoRuleCol">Rule Code</th>
                    <th>
                        전체선택&nbsp;&nbsp;
                        <input type="checkbox" id="mediSearchResultAllSelect">
                    </th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
    <%@ include file="/WEB-INF/jsp/DiagnosisNamePage/kcdDetail_modal.jsp" %>
</div>
</body>
<script src="/static/lib/jQuery-3.4.1.min.js"></script>
<script src="/static/lib/popper.js"></script>
<script src="/static/lib/bootstrap.min.js"></script>
<script src="/static/lib/bootstrap-select.min.js"></script>
<script src="/static/js/global-variable.js"></script>
<script src="/static/js/medicinePage/medi_detail.js"></script>
<script type="text/javascript">
    $(function(){
        medi.mapVer = '${mapVer}';
        medi.limit = '${limit}';
        medi.currentOffset = '${offset}';
        medi_detail_static_func();
    })
</script>
</html>
