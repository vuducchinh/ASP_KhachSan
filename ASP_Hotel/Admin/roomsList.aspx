﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="roomsList.aspx.cs" Inherits="Admin_rooms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
	Quản lý các phòng
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentTable" Runat="Server">
	<asp:GridView class="table table-bordered" ID="grvDSDatPhong" runat="server" AutoGenerateColumns="False"> 
		<Columns>
			<asp:BoundField DataField="room_id" HeaderText="Mã phòng" />
			<asp:BoundField DataField="room_name" HeaderText="Tên phòng" />
			<asp:TemplateField HeaderText="Hình ảnh">
				<ItemTemplate>
					<asp:Image ID="img" ImageUrl='<%#Bind("avatar") %>' runat="server" class="imgTable" />
				</ItemTemplate>
			</asp:TemplateField>
			<asp:BoundField DataField="room_status" HeaderText="Trạng thái" />
			<asp:BoundField DataField="room_type_id" HeaderText="Mã loại phòng" />
			<%--<asp:TemplateField HeaderText="Xoa">
				<ItemTemplate>
					<asp:Button ID="xoa" CommandName="xoa" CommandArgument='<%#Bind("masv") %>'
						OnCommand="Xoa_Click" runat="server" Text="Xoa" 
						OnClientClick="return confirm('Ban co muon xoa khong?')" />
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="Sua">
				<ItemTemplate>
					<asp:Button ID="sua" CommandName="sua" CommandArgument='<%#Bind("masv") %>'
						OnCommand="Sua_Click" runat="server" Text="Sua"/>
				</ItemTemplate>
			</asp:TemplateField>--%>
		</Columns>
	</asp:GridView>
	<p></p>
	<asp:Button ID="btnRoomAdd" class="float-right" runat="server" Text="Thêm phòng" PostBackUrl="~/Admin/roomsAdd.aspx" />
</asp:Content>


