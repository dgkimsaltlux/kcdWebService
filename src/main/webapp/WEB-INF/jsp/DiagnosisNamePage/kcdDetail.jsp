<%--
  Created by IntelliJ IDEA.
  User: saltlux
  Date: 2019-10-11
  Time: 오후 4:06
  To change this template use File | Settings | File Templates.
--%>
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
<div class="container-fluid content" id="kcdListPage">
    <div class="alert alert-primary" role="alert">
        <div class="pull-left">
            <button class="btn btn-lg btn-danger detailRoutingBtn" id="kcdList_prev" data-btntype="prev"><<<<</button>
        </div>
        <div style="margin-left: 135px;margin-right: 135px;display: inline-block;">
           <div>
               <a href="/">메인으로</a>
           </div>
            <input type="hidden" value="${mapVer}" id="mapVer">
            <span><b>KCD코드 : </b><span id="kcdCd">${kcdCd}</span></span>
            <div>
                <div><b>한글명 : </b><span id="kcdKor"></span></div>
                <div><b>영문명 : </b><span id="kcdEng"></span></div>
            </div>
        </div>
        <div class="pull-right">
            <button class="btn btn-lg btn-danger detailRoutingBtn" id="kcdList_next" data-btntype="next">>>>></button>
        </div>
    </div>
    <div class="row">
        <div class="alert">
            <div>
            </div>
        </div>
    </div>
    <div class="row">
        <table class="table table-striped kcdDetailTableCss" id="kcdDetailTable">
            <thead>
                <tr>
                    <th scope="col">Core Concept</th>
                    <th scope="col">Concept Name</th>
                    <th scope="col">Core Map CD</th>
                    <th scope="col" width="20%">Attribute&Value</th>
                    <th scope="col">Update Time</th>
                    <th>
                        전체선택&nbsp;&nbsp;
                        <input type="checkbox" id="allSelect">
                    </th>
                    <th>
                        속성 추가
                    </th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
        <div id="removeBtnDiv" class="save-btn-div">
            <button id="removeBtn" class="btn btn-lg btn-danger" disabled onclick="deleteKcdList_req()">삭제</button>
        </div>
    </div>
    <div class="alert alert-primary" role="alert">
        <h4>search menu</h4>
        <div>
            <div>
                <span>
                    <label for="ecl"><b>ecl : </b></label>
                    <input type="text" id="ecl">
                </span>

                <span class="margin-left-20">
                    <label for="disorder">disorder : </label>
                    <input type="radio" name="defaultRule" id="disorder" value="<64572001" >
                </span>

                <span class="margin-left-20">
                    <label for="clinicalFinding">clinical finding : </label>
                    <input type="radio" name="defaultRule" id="clinicalFinding" value="<404684003" checked>
                </span>
            </div>
            <div>
                <label for="term"><b>term : </b></label>
                <input type="text" id="term" style="width: 500px;">
                <label for="synonym" style="margin-left: 20px;"><b>동의어 : </b></label>
                <select class="form-control" name="" id="synonym" style="display: inline-block; width: 700px;">
                </select>
            </div>
            <div>
                <button class="btn btn-lg btn-primary" onclick="search_req()">Search</button> &nbsp;&nbsp;|&nbsp;&nbsp;
                <button class="btn btn-lg btn-primary" onclick="autoRuleSet()">룰 기반 검색</button>&nbsp;&nbsp;|&nbsp;&nbsp;
                <button class="btn btn-lg btn-primary" onclick="similaritySearch()">유사도 기반조회</button> |
                <div id="" class="searchAlert displayNone alertCss">
                    <span>
                        검색이 완료 되었습니다.
                    </span>
                </div>
                <button id="saveBtn" class="btn btn-lg btn-info pull-right" disabled onclick="saveBtn_req()">저장</button>
            </div>
        </div>
    </div>
    <div class="row" id="searchResultTableDiv">
        <%--<div id="saveAlert" class="displayNone alertCss">
            검색이 완료 되었습니다.
        </div>--%>
        <table class="table table-striped" id="searchResultTable">
            <thead>
                <tr>
                    <th>Concept Id</th>
                    <th>Term</th>
                    <th class="autoRuleCol">Rule Code</th>
                    <th>
                        전체선택&nbsp;&nbsp;
                        <input type="checkbox" id="searchResultAllSelect">
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
<script src="/static/js/kcd_detail.js"></script>
<script type="text/javascript">
    $(function(){
        kcd.mapVer = '${mapVer}';
        kcd.limit = '${limit}';
        kcd.currentOffset = '${offset}';
        kcd_detail_static_func();
    })
</script>
</html>
