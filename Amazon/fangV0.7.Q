[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=277b1639-3076-4d8a-be1d-ac3370a6aa9b
Description=fangV0.7
Enable=1
AutoRun=0
[Repeat]
Type=1
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]



time_base_big = 1500

time_base = 1500//1500

backX = 20
backY = 50


Dim xl, yl
xl = Array(1550,1775,1625,1700,1775,1700,1625,1550)
yl = Array(444, 444, 444, 520, 520, 444, 520, 520)

xx = 1853
yy = 211

step_next = 16
nextX = 358
nextY = 15
Dim arrayX
arrayX = Array(5,10,2,6,25,8,10,1)

itemX = 0

longtime = 8*1000   //8*1000

product = 1
product_i = 0
www = True
While www

	itemX = itemX + 1
	If itemX > 6 Then 
		itemX = 0
	End If
	
	
	MoveTo Int((1100 * Rnd) + 300), Int((600 * Rnd) + 200)//返回最顶层
	For 15
		Delay Int((200 * Rnd) + time_base)
		MouseWheel 6 	
	Next
	
	MoveTo Int((1100 * Rnd) + 300), Int((600 * Rnd) + 200)//稍微往下移动部分
	For 3
		Delay Int((200 * Rnd) + time_base)
		MouseWheel - 3 	
	Next
	
	MoveTo 300,650

	For arrayX(itemX)
		Delay Int((200 * Rnd) + time_base)//开始选择一个产品
		MouseWheel - 2 	
	Next
	
	MoveTo 300, 650
	MouseWheel 1
	
	RightClick 1
	Delay Int((200 * Rnd) + time_base)
	MoveTo Int((30 * Rnd) + 400), Int((6 * Rnd) + 670)//右键打开
	Delay Int((200 * Rnd) + time_base)
	LeftClick 1
	
	Delay Int((200 * Rnd) + time_base)
	MoveTo nextX, nextY
	Delay Int((200 * Rnd) + time_base)//切换到新页面
	LeftClick 1
	
	Delay longtime
	MoveTo Int((1100 * Rnd) + 300), Int((600 * Rnd) + 200)//开始浏览
	For 10
		Delay Int((200 * Rnd) + time_base)
		MouseWheel - 1 	
	Next
	
	Delay longtime
	MoveTo Int((1100 * Rnd) + 340), Int((600 * Rnd) + 600)//开始浏览
	For 10
		Delay Int((200 * Rnd) + time_base)
		MouseWheel - 1 	
	Next
	
	
	Delay longtime
	MoveTo Int((100 * Rnd) + 1360), Int((100 * Rnd) + 240)//开始浏览
	For 10
		Delay Int((200 * Rnd) + time_base)
		MouseWheel 1 	
	Next
	
	Delay longtime
	MoveTo Int((100 * Rnd) + 832), Int((100 * Rnd) + 490)//开始浏览
	For 15
		Delay Int((200 * Rnd) + time_base)
		MouseWheel -1 	
	Next
	
	Delay longtime
	MoveTo Int((100 * Rnd) + 532), Int((100 * Rnd) + 490)//开始浏览
	For 20
		Delay Int((200 * Rnd) + time_base)
		MouseWheel -1 	
	Next
	
	Delay longtime
	MoveTo Int((100 * Rnd) + 332), Int((100 * Rnd) + 490)//开始浏览
	For 15
		Delay Int((200 * Rnd) + time_base)
		MouseWheel -1 	
	Next
	
	Delay longtime
	MoveTo Int((100 * Rnd) + 537), Int((100 * Rnd) + 660)//开始浏览
	For 10
		Delay Int((200 * Rnd) + time_base)
		MouseWheel -1 	
	Next
	
	Delay longtime
	MoveTo Int((100 * Rnd) + 332), Int((100 * Rnd) + 490)//开始浏览
	For 10
		Delay Int((200 * Rnd) + time_base)
		MouseWheel -1 	
	Next
	
	Delay longtime
	MoveTo Int((1100 * Rnd) + 1180), Int((600 * Rnd) + 464)//返回最顶层
	For 15
		Delay Int((200 * Rnd) + time_base)
		MouseWheel 6 	
	Next
	
	MoveTo Int((1100 * Rnd) + 300), Int((600 * Rnd) + 200)
	
	MoveTo Int((30 * Rnd) + 400), Int((20 * Rnd) + 300)//上下挪动一下产品图
	Delay Int((200 * Rnd) + time_base)
	MoveTo Int((30 * Rnd) + 450), Int((20 * Rnd) + 600)
	Delay Int((200 * Rnd) + time_base)
	
	MoveTo 530, 550
	Delay Int((200 * Rnd) + time_base)//打开产品图
	LeftClick 1
	
	Delay 2000
	For i=0 to Ubound(xl)
		MoveTo Int((15 * Rnd) + xl(i)),Int((5 * Rnd) + yl(i))
		Delay Int((3000 * Rnd) + time_base *4)
		LeftClick 1
	Next
	
	Delay 5000
	
	KeyDown 17, 1
	KeyPress 87, 1
	KeyUp 17, 1
	
	If (product_i > product) Then 
		product_i = 0
		MoveTo Int((1100 * Rnd) + 300), Int((600 * Rnd) + 200)
		For 13
			Delay Int((200 * Rnd) + time_base)
			MouseWheel - 6 	
		Next
		
		For step_next
			Delay Int((200 * Rnd) + time_base)
			MouseWheel 1	
		Next
		
		MoveTo 29, 550
		Delay Int((3000 * Rnd) + time_base *4)
		LeftClick 1
		
		sX = 100
		xY = 100
		FindPic 875, 158, 1600, 950, "C:\right.bmp", 0.7, sX, sY
		If (sX > 875 And sY > 158) Then 
			MoveTo Int(sX - 20 - (30 * Rnd)), Int((8 * Rnd) + sY+8)
			Delay Int((200 * Rnd) + time_base)
			LeftClick 1
		End If
		
		sX = 100
		xY = 100
		FindPic 875, 158, 1600, 950, "C:\page.bmp", 0.7, sX, sY
		If (sX > 875 And sY > 158) Then 
			MoveTo Int(sX +5+ (10 * Rnd)), Int((8 * Rnd) + sY+2)
			Delay Int((200 * Rnd) + time_base)
			LeftClick 1
		End If
	End If
	
	product_i = product_i + 1
	
	Delay 5000	

Wend
