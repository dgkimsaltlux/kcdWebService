<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<input type="text" id="sctId" hidden>
<div class="container-fluid content displayNone" id="medicalCheckPage">
    <div class="wall">
        <div class="pull-left">
            <h2>
                검사 목록
            </h2>
        </div>
        <form id="mediCheck_searchForm" method="post" action="/mediCheckExcelDownload.xlsx">
            <div class="row" style="margin-bottom: 10px;">
                <input type="hidden" name="mapVer" id="mediCheck_mapVer" value="0">
                <!--div class="form-inline col-xl-3">
                    <label for="version">ver : </label>
                    <select class="form-control kcdSearchOption" name="mapVer" id="version" style="width: 300px;">
                        <option value="0">0 : 최초매핑버전</option>
                        <option value="1">1 : 추가임시버전</option>
                    </select>
                </div-->
                <div class="form-inline col-xl-3">
                    <label for="mediCheck_listOption">매핑상태 : </label>
                    <select class="form-control medicalCheckSearchOption" name="listOption" id="mediCheck_listOption" style="width: 90px;">
                        <option value="All">전체</option>
                        <option value="Mapping">매핑</option>
                        <option value="NoMapping">비매핑</option>
                        <%--<option value="IcdNotMapping">ICD 비매핑</option>--%>
                    </select>
                    <input type="hidden" name="mapStatCd" id="mediCheck_mapStatCd" value="All">
                    <!--label for="mapStatCd" style="margin-left: 20px;">MapStatCD : </label>
                    <select class="form-control kcdSearchOption" name="mapStatCd" id="mapStatCd" style="width: 170px;"></select-->
                    <div class="form-inline" style="padding-left: 15px;">
                        <label for="mediCheck_searchToKexCd">검색: </label>
                        <input name="kexCd" id="mediCheck_searchToKexCd" class="form-control" type="text" placeholder="KEX코드 검색.">
                    </div>
                </div>
                <div class="totalCnt-css col-xl-3">
                    <div>
                        <span><b>KEX 코드기준 Total : </b></span>
                        <span id="kexTotalCnt"></span>
                    </div>
                    <div>
                        <span><b>매핑 Total : </b></span>
                        <span id="mediCheck_totalCnt"></span>
                    </div>
                </div>

                <div class="col-xl-3">
                    <div style="display: inline-block; margin-top: 20px;">
                        <span style="width: 50px; display: inherit;">
                            <button class="btn btn-light" id="mediCheck_prev">
                                <<</button> </span> <span id="mediCheck_currentPage"></span>
                        <span style="width: 50px; display: inherit;">
                            <button class="btn btn-light" id="mediCheck_next">>></button>
                        </span>
                    </div>
                    <div style="display: inline-block; margin-top: 20px;">
                        <button class="btn btn-outline-danger" id="mediCheck_excelDownloadBtn">Excel Download</button>
                    </div>

                </div>
            </div>
            <div class="row">

            </div>
            <input type="text" hidden name="limit" id="limit">
            <input type="text" hidden name="offset" id="offset">
        </form>
    </div>
    <div class="mediCheck_listTableDiv">
        <table class="table table-striped" id="mediCheck_listTable">
            <thead>
            <tr>
                <th scope="col">KEX코드</th>
                <th scope="col">KEX 한글명/영문명</th>
                <th scope="col">Snomed ID</th>
                <th scope="col">Snomed CT Term</th>
                <th scope="col">매핑상태</th>
                <th scope="col">매핑일자</th>
            </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
</div>
