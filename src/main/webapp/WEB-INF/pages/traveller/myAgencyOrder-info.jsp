<%--
我选择的旅行社的路线订单的详细信息
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" errorPage="404.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>我的旅行社</title>
    <meta name="description" content="我的旅行社">
    <meta name="keywords" content="我的旅行社">

    <!-- Tell the browser to be responsive to screen width -->
    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">

    <link rel=“stylesheet”
          href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="header.jsp"><jsp:param name="user" value="${user}"/></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="aside.jsp"><jsp:param name="user" value="${user}"/></jsp:include>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                旅行社管理 <small>我的旅行社</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i
                        class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">旅行社管理</a></li>
                <li class="active">我的旅行社</li>
            </ol>
        </section>
        <!-- 内容头部 /-->
        <!-- 正文区域 -->
        <section class="content"> <!--订单信息-->
            <div class="panel panel-default">
                <div class="panel-heading">路线订单信息</div>
                <div class="row data-type">

                    <div class="col-md-2 title">订单编号</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="订单编号"
                               value="${ao.id}" readonly="readonly">
                    </div>

                    <div class="col-md-2 title">下单时间</div>
                    <div class="col-md-4 data">
                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" class="form-control pull-right"
                                   id="datepicker-a3" readonly="readonly"
                                   value="${ao.orderTimeStr}">
                        </div>
                    </div>
                    <div class="col-md-2 title">路线编号</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="路线编号"
                               value="${ao.route.routeId}" readonly="readonly">
                    </div>
                    <div class="col-md-2 title">路线名称</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="路线名称"
                               value="${ao.route.routeName }" readonly="readonly">
                    </div>

                    <div class="col-md-2 title">出发城市</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="出发城市"
                               value="${ao.route.departureCity }" readonly="readonly">
                    </div>

                    <div class="col-md-2 title">出发时间</div>
                    <div class="col-md-4 data">
                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" class="form-control pull-right"
                                   id="datepicker-a6" value="${ao.route.departureTimeStr}"
                                   readonly="readonly">
                        </div>
                    </div>
                    <div class="col-md-2 title">订单状态</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control"
                               value="" readonly="readonly" id="orderStatus">
                    </div>
                    <div class="col-md-2 title">处理时间</div>
                    <div class="col-md-4 data">
                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" class="form-control pull-right"
                                   readonly="readonly"
                                   value="" id="handler">
                        </div>
                    </div>
                </div>
            </div>
            <!--订单信息/--> <!--游客信息-->
            <div class="panel panel-default">
                <div class="panel-heading">旅客信息</div>
                <!--数据列表-->
                <table id="dataList"
                       class="table table-bordered table-striped table-hover dataTable">
                    <thead>
                    <tr>
                        <th class="">人群</th>
                        <th class="">姓名</th>
                        <th class="">性别</th>
                        <th class="">手机号码</th>
                        <th class="">证件类型</th>
                        <th class="">证件号码</th>
                        <th>舱位等级</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>成人</td>
                        <td>
                            <input type="text" size="10" value="${user.trueName}" name="trueName" readonly class="form-control">
                        </td>
                        <td>
                            <input type="text" size="10" value="${user.sex}" name="sex" readonly class="form-control" id="sex">

                        </td>
                        <td><input type="text" size="20"
                                   value="${user.phone}" name="phone" id="phone" class="form-control" readonly></td>
                        <td><input type="text" size="15"
                                   value="居民身份证" readonly="readonly" class="form-control">
                        </td>
                        <td>
                            <input type="text" size="28" value="${user.ID_Card}" name="ID_Card" id="ID_Card" class="form-control" readonly="readonly">
                        </td>
                        <td><input type="text" size="15"
                                   value="${ao.beat}" readonly="readonly" class="form-control">
                        </td>
                    </tr>
                    </tbody>
                </table>
                <!--数据列表/-->
            </div>
            <!--游客信息/-->
            <!--联系人信息-->
            <div class="panel panel-default">
                <div class="panel-heading">旅行社联系人信息</div>
                <div class="row data-type">
                    <div class="col-md-2 title">联系人</div>
                    <div class="col-md-4 data text">${ao.agency.contactName}</div>

                    <div class="col-md-2 title">手机号</div>
                    <div class="col-md-4 data text">${ao.agency.contactPhone}</div>

                </div>
            </div>

            <!--费用信息-->
            <div class="panel panel-default">
                <div class="panel-heading">费用信息</div>
                <div class="row data-type">

                    <div class="col-md-2 title">支付方式</div>
                    <div class="col-md-4 data text">在线支付-卡内余额</div>

                    <div class="col-md-2 title">金额</div>
                    <div class="col-md-4 data">
                        <div class="input-group">
                            <span class="input-group-addon">¥</span>
                            <input type="text" class="form-control" value="${ao.route.price}" name="price" readonly="readonly"/>
                            <span class="input-group-addon">.00</span>
                        </div>
                    </div>

                </div>
            </div>
            <!--费用信息/--> <!--工具栏-->
            <div class="box-tools text-center">
                <a href="${pageContext.request.contextPath}/traveller/exitOrder?aid=${ao.agency.id}&&rid=${ao.route.routeId}&&tid=${user.id}&&price=${ao.route.price}">
                    <button type="button" class="btn bg-default" id="exitOrder">退订</button>
                </a>
                <button type="button" class="btn bg-default"
                        onclick="history.back(-1);">返回</button>
            </div>
            <!--工具栏/--> </section>
        <!-- 正文区域 /-->

    </div>
    <!-- 内容区域 /-->

    <!-- 底部导航 -->

    <!-- 底部导航 /-->

</div>

<script
        src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>

<script>
    $(document).ready(function() {
        //退订操作
        $("#exitOrder").click(function () {
            var nowTime = new Date();
            var time = '${ao.route.departureTimeStr}'; // 获取路线出发的时间
            // 获取订单处理状态
            var statu = '';
            var orderTime = new Date(time);
            if(orderTime.getTime() < nowTime.getTime()){
                alert("该路线已出发，不支持退订！！")
                return false;
            }
            // 如果订单已经处理 则提示【先退订您的航班机票】消息
            if(${ao.orderStatus == 1}){
                alert("您的订单已被处理，请先退订您的航班机票");
                return false;
            }
            if(confirm("请确认您的操作")){
                return true;
            } else {
                return false;
            }
        });
        //对性别进行判断
        if(${user.sex}){
            $("#sex").val("男");
        }else{
            $("#sex").val("女");
        }
        //对订单状态进行处理//对订单的处理时间进行控制
        if(${ao.orderStatus == 1}){
            $("#orderStatus").val("已处理")
            $("#handler").val("${ao.handlerTimeStr}");
        }else if(${ao.orderStatus == 0}){
            $("#orderStatus").val("待处理")
            $("#handler").val("尚未处理时间");
        }else{
            $("#orderStatus").val("已取消处理")
            $("#handler").val("${ao.handlerTimeStr}");
        }

        //Date picker时间控件
        $('#datepicker').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            language: 'zh-CN'
        });
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale : 'zh-CN'
        });
    });

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document).ready(function() {
        // 激活导航位置
        setSidebarActive("order-manage");

        // 列表按钮
        $("#dataList td input[type='checkbox']").iCheck({
            checkboxClass : 'icheckbox_square-blue',
            increaseArea : '20%'
        });
        // 全选操作
        $("#selall").click(function() {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });
    });
</script>
</body>


</html>
