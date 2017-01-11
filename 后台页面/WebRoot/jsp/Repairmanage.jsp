<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="UTF-8">
    <title>报修管理</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
    <!--datatable-->
    <link rel="stylesheet" href="../css/jquery.dataTables.min.css">
	<link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/Repairmanage.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="navbar" role="navigation">
      <div class="container-fluid container-nav">
          <!-- 点击收缩左边的菜单栏  + 缩小后左边菜单栏的显示 -->
          <ul class="nav navbar-nav navbar-actions navbar-left">
              <li class="visible-md visible-lg"><a href="index.html#"><i class="icon-th-large"></i></a></li>
              <li class="visible-xs visible-sm"><a href="index.html#"><i class="icon-align-justify"></i></a></li>
          </ul>
      
          <span class="teachCenterTitle">基地管理系统</span>
          <!-- Navbar Left -->
    
          <!-- Navbar Right -->
          <div class="navbar-right">
              <!-- Notifications -->
              <ul class="notifications" avalonctrl="subNotificationsController">
                  <li class="hidden-sm hidden-xs">
                      <a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
                          <i class="icon-envelope"><span class="badge dw-position">4</span></i>
                              <!--ms-if-->
                      </a>
                      <ul class="dropdown-menu">
                          <li class="dropdown-header" style="text-align: center;">
                          <strong>未读消息列表</strong>
                          </li>    
                          <li class="dropdown-menu-footer text-center">
                              <a href="../teach/notifications.html">更多消息</a>
                          </li>
                      </ul>
    
                  </li>
                  <li>
                      <a href="#outModal" class="dropdown-toggle notification-icon" data-toggle="modal">
                          <i class="icon-remove"></i>
                      </a>
                  </li>
              </ul>
    
              <!-- End Notifications -->
          </div>
          <!-- End Navbar Right -->
      </div>
    </div>



	<div class="container-fluid content">
    	<div class="row">
        	
        	<div class="sidebar">
					<div class="sidebar-collapse">
						<!-- Sidebar Header Logo-->
						<div class="sidebar-header ">
							<a href="#" target="_blank"><img src="../image/manage-logo.png" alt=""></a>
						</div>
						
						<!-- Sidebar Menu-->
						<div class="sidebar-menu" style="height: 384px;">
							<nav id="menu" class="nav-main" role="navigation">
								<ul class="nav nav-sidebar">
									<div class="panel-body text-center">
										<div class="bk-avatar">
											<a href="#"><img class="img-circle bk-img-60" alt="" src="../image/psu.jpg"></a>
											<!--ms-if-->
										</div>
										<div class="bk-padding-top-10">
											<i class="icon-circle text-success"></i> 
											<small>罗旭</small>
											<!--ms-if-->
										</div>
									</div>
									<div class="divider2"></div>
									
									
									<li class="menuItem">
										<a href="index.html">
											<i class="icon-home" aria-hidden="true"></i><span>主界面</span>
										</a>
									</li>
									
									 <li class="menuItem nav-parent">
										<a>
											<i class="icon-copy" aria-hidden="true"></i><span>我的工作</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="#"><span class="text">我的租赁</span></a></li>
											<li><a href="#"><span class="text">我的实习</span></a></li>
											<li><a href="#"><span class="text">我的报修</span></a></li>
											<li><a href="#"><span class="text">我的基地</span></a></li>
										</ul>
									</li>

									<li class="menuItem nav-parent">
										<a>
											<i class="icon-copy" aria-hidden="true"></i><span>审批工作</span>
										</a>
										<ul class="nav nav-children">
                                            <li><a href="#"><span class="text">租赁审批</span></a></li>
                                            <li><a href="#"><span class="text">实习审批</span></a></li>
                                            <li><a href="#"><span class="text">基地审批</span></a></li>
                                            <li><a href="#"><span class="text">基地审批</span></a></li>

										</ul>
									</li>

										<li class="menuItem nav-parent">
										<a>
											<i class="icon-copy" aria-hidden="true"></i><span>数据管理</span>
										</a>
										<ul class="nav nav-children">
                                        	<li><a href="#"><span class="text"> 发布通知公告</span></a></li>
                                        	<li><a href="#"><span class="text"> 土地布局设置</span></a></li>
                                        	<li><a href="#"><span class="text"> 实习基地维护</span></a></li>
                                            <li><a href="#"><span class="text"> 土地租赁维护</span></a></li>
                                            <li><a href="#"><span class="text"> 实习计划维护</span></a></li>
                                            <li><a href="#"><span class="text"> 系统用户维护</span></a></li>
                                            <li><a href="#"><span class="text"> 系统权限设置</span></a></li> 
										</ul>
									</li>
									 <li class="menuItem nav-parent">
										<a>
											<i class="icon-copy" aria-hidden="true"></i><span>统计分析</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="#"><span class="text">租赁统计</span></a></li>
											<li><a href="#"><span class="text">实习分析</span></a></li>
											<li><a href="#"><span class="text">实习基地统计</span></a></li>
										</ul>
									</li>									
									
								</ul>
							</nav>
						</div>
						<!-- End Sidebar Menu-->
					</div>
					<!-- Sidebar Footer-->
					<div class="sidebar-footer">
						<div class="copyright text-center">
							<div>湖南农业大学版权所有 </div>
						</div>
					</div>
					<!-- End Sidebar Footer-->
				</div>   <!-- End Sidebar--> 
		        
                
			<div class="main " style="min-height: 584px;">
					<!-- 当前地址导航 -->
					<div class="page-header">
						<div class="pull-left">
							<ol class="breadcrumb visible-sm visible-md visible-lg">
                            	<li><a href="index.html">位置</a></li>
                                <li><a href="index.html">报修管理</a></li>
							</ol>
						</div>
						<div class="pull-right">
							<ol class="breadcrumb visible-sm visible-md visible-lg wz">
								<li><a href="index.html"><i class=" icon-building"></i>基地申报</a></li>
                                <li><a href="index.html"><i class="icon-legal"></i>土地租赁</a></li>
                                <li><a href="index.html"><i class="icon-user"></i>实习申请</a></li>
                                <li><a href="index.html"><i class="icon-home"></i>报修申请</a></li>
							</ol>
						</div>
					</div>
					<!-- 主面板内容 -->
					<div class="row form">
						<div class="col-lg-12">
                        	<form action="" method="post"
								enctype="multipart/form-data" name="formApplyInfo" id="formApplyInfo" >
							<table id="Repairmanage" class="cell-border" cellspacing="0" width="100%">
                                    <thead>
                                    	<tr bgcolor="#ECF1F5">
                                            <td colspan="3" id="button-left">
                                            <button type="button" class="btn btn-danger" id="delete">删除</button>
                                            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#add" id="ZJ">增加</button>
                                            </td>
                                            <td colspan="6" >
                                            </td>
                                             <td colspan="3" id="button-right">
                                             	<button type="button" id="import" class="btn btn-primary" data-toggle="modal" data-target="#exportmodal">导出</button>
                                             </td>
                                               
                                        </tr>
                                        <tr>
                                            <th>序号</th>
                                            <th>项目名称</th>
                                            <th>基地名称</th>
                                            <th>申报人</th>
                                            <th>申报时间</th>
                                            <th>实际金额</th>
                                            <th>申请状态</th>
                                            <th hidden>实际金额</th>
                                            <th hidden>具体地址</th>
                                            <th hidden>原因说明</th>
                                            <th hidden>材料地址</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody class="text-center">
                                        <tr>
                                            <td><label><input type="checkbox" name="allcheckbox" class="ck"></label></td>
                                            <td>耘园基地维修</td>
                                            <td>浏阳基地</td>
                                            <td>张三</td>
                                            <td>2016.12.12</td>
                                            <td>30000</td>
                                            <td>申请中</td>
                                            <td>
                                            <button type="button" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#edit">修改</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><label><input type="checkbox" name="allcheckbox" class="ck"></label></td>
                                            <td>耘园基地维修</td>
                                            <td>浏阳基地</td>
                                            <td>张三</td>
                                            <td>2016.12.12</td>
                                            <td>30000</td>
                                            <td>申请中</td>
                                            <td>
                                            <button type="button" class="btn btn-warning btn-xs">修改</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><label><input type="checkbox" name="allcheckbox" class="ck"></label></td>
                                            <td>耘园基地维修</td>
                                            <td>浏阳基地</td>
                                            <td>张三</td>
                                            <td>2016.12.12</td>
                                            <td>30000</td>
                                            <td>申请中</td>
                                            <td>
                                            <button type="button" class="btn btn-warning btn-xs">修改</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><label><input type="checkbox" name="allcheckbox" class="ck"></label></td>
                                            <td>耘园基地维修</td>
                                            <td>浏阳基地</td>
                                            <td>张三</td>
                                            <td>2016.12.12</td>
                                            <td>30000</td>
                                            <td>申请中</td>
                                            <td>
                                            <button type="button" class="btn btn-warning btn-xs">修改</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><label><input type="checkbox" name="allcheckbox" class="ck"></label></td>
                                            <td>耘园基地维修</td>
                                            <td>浏阳基地</td>
                                            <td>张三</td>
                                            <td>2016.12.12</td>
                                            <td>30000</td>
                                            <td>申请中</td>
                                            <td>
                                            <button type="button" class="btn btn-warning btn-xs">修改</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <thead>
                                    	<tr>
                                        	<td colspan="11">
                                    			<label><input type="checkbox" name="0" class="ck-all" id="ck1"/>全选</label>
                                				<label><input type="checkbox" name="0" class="ck-re" id="ck2"/>反选</label>
                                           </td>
                                       </tr>
                                       
                                  </thead>
                                  </table>
							</form>
						</div>
					</div>
                    
                    
				</div><!-- End Sidebar-->
                			<!-- 弹出框-->                 
                			<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabe" aria-hidden="true">
                                  <div class="modal-dialog">
                                    <div class="modal-content" style="border:#3071a9 8px solid">
                                      <div class="modal-header" style="background:#3071a9; color:#FFF">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title text-center" id="myModalLabel">详情及修改</h4>
                                      </div>
                                      <div class="modal-body table-responsive">
                                    <div class="row">
                                    	<div class="col-md-12">
                                        	<form action="" method="post" class="form-horizontal" role="form" id="applyeditform">
                                            <table class="table" style="border:none !important;">
                                                <tr>
                                                    <td>项目名称 ：</td>
                                                    <td><input type="text" class="form-control" id="Eprojectname" value="耕耘基地维修"></td>
                                                </tr>
                                                <tr>
                                                    <td>基地名称 ： </td>
                                                    <td>
                                                    	<select class="form-control" id="Ebasename" value="1">
                                                             <option value="1" id="Ebasenameid">请选择</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>报修人 ： </td>
                                                    <td><input type="text" class="form-control" id="Ename" value="张三"></td>
                                                </tr>
                                                <tr>
                                                    <td>申报时间 ： </td>
                                                   <td><input type="text"  class="form-control" id="Etime" value="2016-12-12"></td>
                                                </tr>
                                                <tr>
                                                    <td>预算金额 ： </td>
                                                   <td><input type="text"  class="form-control" id="Ebudget" value="30000"></td>
                                                </tr>
                                               <tr>
                                                    <td>实际金额 ： </td>
                                                   <td><input type="text"  class="form-control" id="Emoney" value="30000"></td>
                                                </tr>
                                                <tr>
                                                    <td>具体位置 ： </td>
                                                    <td><input type="text" class="form-control" id="Eaddress" value="湖南农业大学"></td>
                                                </tr>
                                                <tr>
                                                	<td>原因说明 ： </td>
                                                    <td><textarea class="form-control" id="Ereason"></textarea></td>
                                                </tr>
                                                <tr>
                                                	<td>材料查看 ： </td>
                                                    <td><a href="#" id="Elink" style="color:#00C; text-decoration:underline">点击查看申请材料</a></td>
                                                </tr>
                                                <tr>
                                                	<td>替换材料 ： </td>
                                                    <td><input type="file" id="file" class="file"></td>
                                                </tr>
                                            </table>
                                            </form>
                                    	</div>
                                    </div>
                                  </div>
                                      <div class="modal-footer table-responsive">
                                        <center>
                                        <button type="button" class="btn btn-primary" id="saverun">保存</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                        </center>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                
                                
                                <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabe" aria-hidden="true">
                                  <div class="modal-dialog">
                                    <div class="modal-content" style="border:#3071a9 8px solid">
                                      <div class="modal-header" style="background:#3071a9; color:#FFF">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title text-center" id="myModalLabel">增加维修信息</h4>
                                      </div>
                                      <div class="modal-body table-responsive">
                                        <div class="row">
                                            <div class="col-md-12">
                                            	<form action="" method="post" class="form-horizontal" role="form" id="applyaddform">
                                                <table class="table" style="border:none !important;">
                                                    <tr>
                                                        <td>项目名称 ：</td>
                                                        <td><input type="text" class="form-control" id="Aprojectname" value=""></td>
                                                    </tr>
                                                    <tr>
                                                        <td>基地名称 ： </td>
                                                        <td>
                                                        	<select class="form-control" id="Abasename" value="">
                                                            	<option id="AbasenameID">请选择</option>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>报修人 ： </td>
                                                        <td><input type="text" class="form-control" id="Aname" value=""></td>
                                                    </tr>
                                                    <tr>
                                                        <td>申报时间 ： </td>
                                                       <td><input type="text"  class="form-control" id="Atime" value=""></td>
                                                    </tr>
                                                    <tr>
                                                        <td>实际金额 ： </td>
                                                       <td><input type="text"  class="form-control" id="Abudget" value=""></td>
                                                    </tr>
                                                    <tr>
                                                        <td>具体位置 ： </td>
                                                        <td><input type="text" class="form-control" id="Aaddress" value=""></td>
                                                    </tr>
                                                    <tr>
                                                        <td>原因说明 ： </td>
                                                        <td><textarea class="form-control" id="Areason"></textarea></td>
                                                    </tr>
                                                    <tr>
                                                    	<td>申请材料 ： </td>
                                                    	<td><input type="file" class="file"></td>
                                                    </tr>
                                                </table>
                                                </form>
                                            </div>
                                        </div>
                                  </div>
                                      <div class="modal-footer table-responsive">
                                        <center>
                                        <button type="button" class="btn btn-primary" id="save">保存</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                        </center>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                
                                
                                <div class="modal fade" id="exportmodal" tabindex="-1" role="dialog"
                                    aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-sm">
                                        <div class="modal-content" style="border:#3071a9 8px solid">
                                            <div class="modal-header" style="background:#3071a9; color:#FFF">
                                                <button type="button" class="close" data-dismiss="modal">
                                                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">请选择导出的基地</h4>
                                            </div>
                                            <div class="modal-body" id="daochu" style="height:120px;">
                                            <center>
                                            	<form role="form">
                                                  
                                                  <div class="form-group">
                                                    <!--<input type="file" id="exampleInputFile">-->
                                                    <select class="form-control" id="Sbasename">
                                                    	<option id="SbasenameID" value="1">请选择</option>
                                                        <option>请选择1</option>
                                                        <option>请选择2</option>
                                                        <option>请选择3</option>
                                                    </select>
                                                  </div>
                                                  <div class="form-group">
                                                    <input type="text" class="form-control" id="year" placeholder="请填写年份例如：2016">
                                                  </div>
                                                </form>
                                            </center>
                                            </div>
                                            <div class="modal-footer">
                                            	<center>
                                                    <button type="button" class="btn btn-default"
                                                        data-dismiss="modal">取消</button>
                                                    <button type="button" class="btn btn-primary" id="export">确定</button>
                                                </center>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                    
            
        </div><!--row end-->
    </div>
	<div class="clearfix"></div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../js/jquery.min.js"></script>
    <!--datatable javascript-->	
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.dataTables.min.js"></script>
    <script src="../js/bootbox.min.js"></script>
     <script src="../dist/jquery.cokie.min.js"></script>
    <script src="../js/Repairmanage.js"></script> 
    <script src="../js/kg.js"></script>
    
  </body>
</html>
