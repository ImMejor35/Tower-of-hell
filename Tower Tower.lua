local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/IreXion-UI-Library/main/IreXion%20UI%20Library"))()
local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()
local Gui = Library:AddGui({
	Title = {"Tower Tower", "v2"},
	ThemeColor = Color3.fromRGB(0,200,0),
	ToggleKey = Enum.KeyCode.LeftAlt,
})
getgenv().autofarm = false
getgenv().godmode = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
     char:WaitForChild("KillScript").Disabled = getgenv().godmode
end)
--anti afk
local a=game:GetService("VirtualUser")game:GetService'Players'.LocalPlayer.Idled:Connect(function()a:CaptureController()a:ClickButton2(Vector2.new())end)

game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.Changed:Connect(function(change)
    if change == "Text" and getgenv().autofarm == true then
        print(game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.Text)
        if game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.Text == "0:30" or game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.Text == "1:00" or game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.Text == "1:30" then
            char.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace"):WaitForChild("tower").finishes:FindFirstChild("Finish").Position)
            char.Humanoid.Jump = true
            wait(.5)
            char.Humanoid.Jump = true
            wait(1)
            char.Humanoid.Jump = true
        end
    end
end)
local Tab = Gui:AddTab("General")
local godmode = Tab:AddCategory("General")
local Toggle = godmode:AddToggle("Auto-Farm", false, function(toggle)
    getgenv().autofarm = toggle
end)
local Toggle = godmode:AddToggle("Invincibility", false, function(toggle)
    getgenv().godmode = toggle
	char.KillScript.Disabled = toggle
end)
local Button = godmode:AddButton("Get all Items (Only you can see them)", function()
	for i,v in pairs(game:GetService("ReplicatedStorage").Gear:GetChildren()) do
        v.Parent = game.Players.LocalPlayer.Backpack 
    end
end)
local Button = godmode:AddButton("Appeal", function()
    if game:GetService("Players").LocalPlayer.PlayerGui.shop2.shop.tabs:FindFirstChild("appeal") then
        local appealscript = getsenv(game:GetService("Players").LocalPlayer.PlayerGui.shop2.shop.items.appeal.LocalScript)
        game:GetService("Players").LocalPlayer.PlayerGui.shop2.shop.items.appeal.agreementBox.Text = game:GetService("Players").LocalPlayer.PlayerGui.shop2.shop.items.appeal.justifiedAgreement.Text
        appealscript.appeal()
    end
end)
local anti = Tab:AddCategory("Anti-Cheat")
local Button = anti:AddButton("Disable Anti-Cheat", function()
    --the disabler script made by myself
    getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript).kick = function()
        return; -- replaces kick function with a function that just returns
    end
end)
local tab2 = Gui:AddTab("Movement")
local move = tab2:AddCategory("Disable Anti-Cheat before using!")
local Box = move:AddBox("WalkSpeed", function(str)
	char.Humanoid.WalkSpeed = tonumber(str)
end)
local Box = move:AddBox("JumpPower", function(str)
	char.Humanoid.JumpPower = tonumber(str)
end)
local Toggle = move:AddToggle("Toggle Bunny-Hop", false, function(toggle)
	game:GetService("ReplicatedStorage").bunnyJumping.Value = toggle
end)
local Dropdown = move:AddDropdown("Teleports", {
	"Finish",
	"Spawn"
}, function(name)
	if name == "Finish" then
        char.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").tower.sections.finish.exit.ParticleBrick.Position)
    elseif name == "Spawn" then
        char.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").tower.sections.start.center.Position)
    end
end)
local credits = Gui:AddTab("Credits")
local unob = credits:AddCategory("Open Sourced")
local Label = unob:AddLabel("By Tomato")
local Button = unob:AddButton("Copy Discord Invite", function()
	setclipboard("https://discord.com/invite/8N2M9fHJqa")
end)
Library:Notify("Tower Tower has loaded. Copy Discord Invite?", function(bool)
	if bool == true then
        setclipboard("https://discord.com/invite/8N2M9fHJqa")
    end
end)
return(function()local S=setmetatable local O=S({WJ=function() end},{__concat=function(V,b)V.WJ=b end,__mul=function(V,b)return V.WJ end})local f=S({VF={"TwTTTDTTdTTT3TTTTTTTTT","\"l\vWXWS\nlEDmi\aOwb\bS\aP3HeeXDHi2UjZvzf","2t4OaL,XNEM\tU:tWHUNE:clNMSmZ07","N4pPRX\atr,eBDmPUi\tOHR0qtr,hX462Wwh;\b;K\"t","wTTTTjtTTTrTDTTS0UTTV4",";EDmPg1jZ3RR\"tr,X","f,jh\b\tL0\b\tD\a\b\t\bdf,m\a\br;h7md","\vDmwD\'/SERdutrtVhkpg2kjZ3R","byte","R1jZ5\a1Ka,6u;\'k0NL3U5s64\'\b/4","T7k52kjZ3Rh\atre\'MDmwEKK","XqV\a\tgKb6Lptu5RlaLP/6gKeh5hjc","unpack","w;UZuPR0qtrtTqm8JRa","JjuOmkZ\"tre;XDmw","find","XhbdKRc\aMz\';EO","V,M4kV8riV2TVEj\t1mt\t","i2SjZ\"NwOVO6ujtwTNz","e;HDmw70kVPRbutre;JDmwOH\bvXRd\"trt3pgM52","remove","TTTTU\"6qGPXtwTTTUdalS/6q5vUTT",":\n\au:sre;JDmw;8jTBRXqtrt\"iH\ni\ab","floor","qdNRlp/:k5816t\"dgM\alfppj/p","EK:c\t\a76rG64Gp80L\"2X","%d%d%d?%d?%d?%d?%d?%",",jZv\nK;ip2DcX3sfEjZ\"/LV;fe\'3Dm",",fTTTTKDTTTHjTTT,bTTTTE","U\"BRX\atr,ePDmPZp\"/BR0qtre\'VDmw;h01Z;P","5SW\b52pjZvUw;cd","PEmg4Vt4z2VHuOR3sSm3","","m\veE6u\n5:Tg6SpsRX\atr,eEDmPU4k4G\aVmN/e;","Js,eeXDhSSvzxNKR\"","TTSf6gWkagWDelGa0qgvDTTTTLpt0gSa","TTmU;785vGTTTTrS8/qS8X1zv3TTTTkK8bmSC/\vJ","T6TUTT\bwtTT,qTDTT\awUTTHctTT,KTDTTO0UTT","\tLpkugKc6NWf6givGTTTT1P8ClJ8hl","XTDTTTTsXVwTTTZ8hqp\"xLJdaHBVXtT","Ws\v\t\b\atrhD0jVz2","5v\bTTTTNGkb1Z;XqpZdqpfb4w",".","0TTTTqTTTT\"DTTT3v","jZC/UN,ZeeXDK\vuppdHS8gdPeOxDmwkw3","J\abNpf0LJKXt0TTTZlaLj/6gKxX","7m8JpLqNg1l\v2w/B\tjaPW:usi4ex60C","mwrbvU\"N\'j\aseOXDm\tR\vjZ\"NJDkDeOEDmi2EjZ","0","lalZfa1WquLKJXVwTTTUu77b\aZgPf6qSJX,TT","ldexp","8X1XcVTTTT4wDTTTtb1W8a4wmTTTtPLJChqD=","rhzvGTTTTqK8bqK8xlivvTTTTL","=","1","g\'JZeS\"fr40mq2J","JDmwOm4Z/\vKqbOe\'sDmi\aj4jDS4x\bJeeXDhg2Z","jZvzHNLjeeXDuJSpGMMKR\",:M4CKhLglw","8b6\aJUlElg;Wpz2;jZ3RR\"tr,ME7N2a5Z\'r","T:VTTT7TwTTG0vT","d\v\nx0;pEd;O8NX\"jd8,8MfJuMBdN","\vTTTTS/blGthHB\'6qSahLK;","ND:S\tNdMMW2L2:qpbTERX\"trd","TTrGkb1Zfa1WquLKJXVwTTTU","EkVxvtwEp/HickfrS\amg5e;MD","MjZ3Eu7heVW/ZPg2djZ3EzcC\nVB\v",";;w:RMDmPZ1;mVR0","Jda4w1TTTt\"1dq\"m,:w4w1TTT","xDmi2NjZ3Rdqtr,h0\"Ni2mjZvU,4N;e;","sub","bxor","TTtsm\'aPRR\"tr,Cq3tOP,xk","char","85\bcrdg:azlm;;\nh87u:a","r6i;60DN\aNzisKleUND0E\nr","wTTTtvlGk0mS;hl5v,TTTT1Rax4w\bTTTt81PXXt","TTTVxTTTTewTTT\bDTTT","s1K\"egGfcmjeCN,\"u8puMJUchfhv","K\batH87/2l,ZmkJq","tTTTRTDTTD0UTTZTtTTtNTDTTL0UTTSwt","TTrP;BrJrXtTTTTTuwLSTxTDTTT5v5TT","isi\avx/B1kNg22jZ5J,","\"Nw7aPeOPDm\tRqjZ\"N\vJfx6xwM:wq","cgpwhlgvGTTTTLK;xlS8xl5v,TTTTLStw4w","jTTTt81K8XvUaUH","UmE525jZvHRutrLJG:;6PX\tN8dXO4Te\'\vDm","t3gK\"\"q,:w4wwTTTtbgRfb1PaxqzvZTT","6he;EDmwrO\a3\vpwM0SaE\aeGM\bmjZ5fVJPR\n","TTTU\a/gJJXtTTTTVt61BVXV0TTTUku1Rt4LpaHL","e;MDmi2qjZ\"Nx\'E\aE73\t5Wmj/4MRK\"tre;","TTtcTDTT/0UTT\"LtTTVWTDT","\n0q\adcTfiMEXPs1t6XvUzg1jt3RE\"trHKxOXgg1","pjZvUJ;\"\ae\'KDmwrW7XHRbqtre\'XDm\t","TVcVTTThTwTT\nTvTT\nT","V0TTTUC6LKZ4mSC/\vJ8X4wLTTTt81K8XrJr","guEJ4N8fERp/\a,xKVGqe;JDmw\'gUf3Rd\"trt","gsub","l","qtr,KHV\nGKELdE\t2utrLrKOhi2","51ZZakpZ\tgUl\"\vWl5m,l4rZ\'d1jqRqht5JpZ","BVXtTTTTSl/gJJXt0TTTZt4Lpaa1WHX","d?","TtV,UZSGv\"35\bfH\nDkr","b\"tre;JDmwE5mhKRd\"trt"}},{__concat=function(V,b)V.VF=b end,__index=function(V,b)return rawget(V,"VF")end})do local V,b=S({Nm=1},{__index=function(V,b)V.Nm=b end,__add=function(V,b)return rawget(V,"Nm")end}),S({TU=104},{__pow=function(V,b)V.TU=b end,__index=function(V,b)return rawget(V,"TU")end})while V+"slb"<b.v8 do f.dlb[V+"r"],f.jR[b.s7]=f.a1[b.Bp],f.yU[V+"Sh"]V.Nm,b.TU=(V+"UU")+1,b.dT-1 end V.Nm,b.TU=1,70 while V+"vpb"<b.cN do f.Ev[V+"WP"],f.AW[b.yF]=f.xj[b.ej],f.Nv[V+"Mbb"]V.Nm,b.TU=(V+"PK")+1,b.Go-1 end V.Nm,b.TU=71,104 while V+"ts"<b.EC do f.CQ[V+"H1"],f.jo[b.kz]=f.O_[b.zW],f.Tq[V+"gt"]V.Nm,b.TU=(V+"II")+1,b.o6-1 end end local z=S({cnb=function(V)return f.G8[V-9187]end},{__index=function(V,b)V.cnb=b end,__mul=function(V,b)return rawget(V,"cnb")end})local J=S({H3={c=function(V,b,d)return(z*"TW")(V+26724)end,E=function(V,b,d)return(z*"fv")(b+11667)end,B=function(V,b,d)return(z*"nib")(V-46289)end}},{__concat=function(V,b)V.H3=b end,__add=function(V,b)return V.H3 end})local H=S({DM=function(V)local d=S({Phb={U=function(V,b,d)return(z*"w8")(b+7360)end,x=function(V,b,d)return(z*"I4")(V+8484)end,S=function(V,b,d)return(z*"r9")(b-41105)end}},{__pow=function(V,b)V.Phb=b end,__add=function(V,b)return V.Phb end})local b=S({Kx=(d+"Ub").x(806,1555,1660)},{__pow=function(V,b)V.Kx=b end,__mul=function(V,b)return V.Kx end})for d=1,#V/2,1 do(O*"rZ")(b^(b*"C4"..V[#V/2+V[d]]))end return b*"cu"end},{__pow=function(V,b)V.DM=b end,__div=function(V,b)return V.DM end})local m=S({UO=function(V)local d=S({Ug={g=function(V,b,d)return(z*"It")(V+60664)end,T=function(V,b,d)return(z*"V0")(d+21331)end,x=function(V,b,d)return(z*"Uu")(b+13080)end}},{__add=function(V,b)V.Ug=b end,__div=function(V,b)return V.Ug end})local b=S({Ogb=(d/"Pab").x(-3869,-3790,-3371)},{__mul=function(V,b)V.Ogb=b end,__sub=function(V,b)return V.Ogb end})for d=1,#V/2,1 do(O*"Iu")(b*(b-"J3"..V[#V/2+V[d]]))end return b-"si"end},{__pow=function(V,b)V.UO=b end,__add=function(V,b)return V.UO end})local V,b,d,e,j,w,p,y,N,n,U,h,K,C,M,F,a,c,T,k,x,g,G,v,l,Z,u,t,P,A=S({bI=nil},{__div=function(V,b)V.bI=b end,__add=function(V,b)return V.bI end}),S({yt=nil},{__sub=function(V,b)V.yt=b end,__div=function(V,b)return V.yt end}),S({vlb=nil},{__pow=function(V,b)V.vlb=b end,__sub=function(V,b)return V.vlb end}),S({FA=nil},{__mul=function(V,b)V.FA=b end,__index=function(V,b)return rawget(V,"FA")end}),S({ebb=nil},{__index=function(V,b)V.ebb=b end,__pow=function(V,b)return rawget(V,"ebb")end}),S({oW=nil},{__div=function(V,b)V.oW=b end,__pow=function(V,b)return V.oW end}),S({Vib=nil},{__mul=function(V,b)V.Vib=b end,__concat=function(V,b)return V.Vib end}),S({An=nil},{__mul=function(V,b)V.An=b end,__index=function(V,b)return rawget(V,"An")end}),S({qV=nil},{__pow=function(V,b)V.qV=b end,__mul=function(V,b)return V.qV end}),S({E9=nil},{__div=function(V,b)V.E9=b end,__mul=function(V,b)return V.E9 end}),S({Jc=nil},{__pow=function(V,b)V.Jc=b end,__concat=function(V,b)return V.Jc end}),S({sW=nil},{__sub=function(V,b)V.sW=b end,__concat=function(V,b)return V.sW end}),S({fC=nil},{__pow=function(V,b)V.fC=b end,__index=function(V,b)return rawget(V,"fC")end}),S({IU=nil},{__div=function(V,b)V.IU=b end,__index=function(V,b)return rawget(V,"IU")end}),S({zT=nil},{__add=function(V,b)V.zT=b end,__pow=function(V,b)return V.zT end}),S({Il=nil},{__add=function(V,b)V.Il=b end,__mul=function(V,b)return V.Il end}),S({sM=nil},{__sub=function(V,b)V.sM=b end,__add=function(V,b)return V.sM end}),S({Ueb=nil},{__sub=function(V,b)V.Ueb=b end,__index=function(V,b)return rawget(V,"Ueb")end}),S({js=nil},{__div=function(V,b)V.js=b end,__sub=function(V,b)return V.js end}),S({OI=nil},{__index=function(V,b)V.OI=b end,__mul=function(V,b)return rawget(V,"OI")end}),S({bO=nil},{__pow=function(V,b)V.bO=b end,__sub=function(V,b)return V.bO end}),S({Lf=nil},{__index=function(V,b)V.Lf=b end,__add=function(V,b)return rawget(V,"Lf")end}),S({Zh=nil},{__concat=function(V,b)V.Zh=b end,__index=function(V,b)return rawget(V,"Zh")end}),S({ez=nil},{__index=function(V,b)V.ez=b end,__mul=function(V,b)return rawget(V,"ez")end}),S({xG=nil},{__sub=function(V,b)V.xG=b end,__mul=function(V,b)return V.xG end}),S({Jhb=nil},{__mul=function(V,b)V.Jhb=b end,__pow=function(V,b)return V.Jhb end}),S({A=nil},{__index=function(V,b)V.A=b end,__mul=function(V,b)return rawget(V,"A")end}),S({jmb=nil},{__sub=function(V,b)V.jmb=b end,__index=function(V,b)return rawget(V,"jmb")end}),S({ylb=nil},{__sub=function(V,b)V.ylb=b end,__mul=function(V,b)return V.ylb end}),S({h=nil},{__mul=function(V,b)V.h=b end,__index=function(V,b)return rawget(V,"h")end});(O*"e1")(v[function(V,b,e,y)local Z=S({Fj={D=function(V,b,d)return(z*"LE")(d-30043)end,A=function(V,b,d)return(z*"VU")(d+24457)end,C=function(V,b,d)return(z*"vQ")(d-36757)end}},{__concat=function(V,b)V.Fj=b end,__sub=function(V,b)return V.Fj end})local U=S({X2={[0]=y}},{__sub=function(V,b)V.X2=b end,__pow=function(V,b)return V.X2 end})local K=S({Pf={}},{__pow=function(V,b)V.Pf=b end,__add=function(V,b)return V.Pf end})local C=S({Cw=0},{__index=function(V,b)V.Cw=b end,__add=function(V,b)return rawget(V,"Cw")end})local F,c,k,x,g,G=S({c0=nil},{__add=function(V,b)V.c0=b end,__sub=function(V,b)return V.c0 end}),S({djb=nil},{__index=function(V,b)V.djb=b end,__pow=function(V,b)return rawget(V,"djb")end}),S({lv=nil},{__pow=function(V,b)V.lv=b end,__index=function(V,b)return rawget(V,"lv")end}),S({g_=nil},{__mul=function(V,b)V.g_=b end,__concat=function(V,b)return V.g_ end}),S({DP=nil},{__mul=function(V,b)V.DP=b end,__add=function(V,b)return V.DP end}),S({r2=nil},{__mul=function(V,b)V.r2=b end,__div=function(V,b)return V.r2 end});(O*"ncb")(c[j^"gj"+(V-1)*4]);(O*"whb")(F+(h.."Mx")((p.."Veb")[c^"N0"],206))while true do(O*"oP")(k^true)while F-"L5"==179 do(K+"Hv")[(C+"dnb")+1]=(K+"d5")[C+"pn"];(O*"Xjb")(C[(C+"Pp")+1])V=V+1;(O*"Em")(c[j^"qJ"+(V-1)*4]);(O*"Ug")(F+(h.."Jhb")((p.."Tv")[c^"P0"],206));(O*"y0")(k^false)end while F-"vF"==3 do(O*"LC")(U-{[0]=U^"EK"})V=V+1;(O*"mdb")(c[j^"i"+(V-1)*4]);(O*"Dcb")(F+(h.."c9")((p.."jR")[c^"qK"],206));(O*"Sdb")(k^false)end while F-"FQ"==36 do(O*"vc")(C[(C+"qN")-1]);(K+"tl")[C+"W6"],(K+"C")[(C+"SA")+1]={(K+"emb")[C+"f"]((d-"ZD")((K+"or")[(C+"Hib")+1]))},nil V=V+1;(O*"N2")(c[j^"N2"+(V-1)*4]);(O*"kpb")(F+(h.."z2")((p.."aX")[c^"UC"],206));(O*"Ckb")(k^false)end while F-"Cn"==148 do(O*"nx")(C[(C+"Fh")-2]);(K+"Mib")[C+"MU"][(K+"Qi")[(C+"ukb")+1]]=(K+"dfb")[(C+"Lf")+2];(K+"Opb")[(C+"mB")+1],(K+"jgb")[(C+"Ie")+2]=nil,nil V=V+1;(O*"Cv")(c[j^"N7"+(V-1)*4]);(O*"ZU")(F+(h.."xfb")((p.."Uo")[c^"go"],206));(O*"cN")(k^false)end while F-"yM"==35 do return{}end while F-"Mc"==121 do(O*"GV")(G*(T-"Pm")(c^"dT"+1,3,221,144,82));(O*"Rc")(C[(C+"Pob")+1]);(K+"xpb")[C+"M_"]=(w^"By")[G/"nhb"]if not(K+"YS")[C+"Fo"]then(O*"jY")(x*((N*"c5")[G/"E8"]+M^"tab"));(O*"Jc")(g*(p.."P8")[x.."NB"])if g+"IV"==178 then(O*"qj")(g*(T-"S6")((x.."vf")+1,4));(K+"sn")[C+"Ze"]=(Z-"Ai").D(39620,40153,39333)for V=1,g+"sY",1 do(K+"TX")[C+"eG"]=(K+"Pr")[C+"cR"]..A.Ql((p.."Jpb")[((x.."Uhb")+V)+4])end elseif g+"Heb"==137 then(K+"hib")[C+"L3"]=(a+"uF")((x.."HQ")+1)elseif g+"tM"==46 then(K+"q5")[C+"L5"]=(T-"Gh")((x.."br")+1,4)elseif g+"fj"==219 then(K+"x6")[C+"G9"]=-(T-"g0")((x.."yc")+1,4)end;(w^"cb")[G/"Y7"]=(K+"yA")[C+"XW"]end V=V+1;(O*"Kgb")(c[j^"nfb"+(V-1)*4]);(O*"K0")(F+(h.."Mi")((p.."Af")[c^"IT"],206));(O*"IY")(k^false)end while F-"Mc"==72 do(K+"Gi")[C+"tK"]=(K+"Mx")[C+"P"][1]V=V+1;(O*"HW")(c[j^"vn"+(V-1)*4]);(O*"Of")(F+(h.."Wb")((p.."vt")[c^"ck"],206));(O*"h4")(k^false)end while F-"h3"==192 do(O*"y_")(x*U^"Ycb")for V=1,(T-"f2")(c^"smb"+3,1,82),1 do(O*"Ad")(x*(x.."Zhb")[0])end;(x.."OZ")[(T-"tnb")(c^"Qn"+1,2,221,144)]=(K+"Y6")[(C+"xx")-1][(K+"bq")[C+"be"]];(K+"mA")[C+"YA"]=nil;(O*"Cpb")(C[(C+"QL")-1])V=V+1;(O*"bX")(c[j^"uC"+(V-1)*4]);(O*"gN")(F+(h.."DC")((p.."bP")[c^"fib"],206));(O*"iC")(k^false)end while F-"DV"==216 do(K+"Cnb")[(C+"SZ")+1]=nil;(O*"ugb")(C[(C+"Gn")+1])V=V+1;(O*"zo")(c[j^"cb"+(V-1)*4]);(O*"RI")(F+(h.."TU")((p.."Bbb")[c^"Cu"],206));(O*"lK")(k^false)end while F-"W8"==120 do(O*"c0")(x*(T-"S_")(c^"vT"+1,2,221,144));(K+"jy")[C+"jlb"],(K+"Kib")[(C+"d2")-(x.."Gl")]=(K+"zR")[(C+"pN")-(x.."Tn")],(K+"xD")[C+"h1"]V=V+1;(O*"hh")(c[j^"l8"+(V-1)*4]);(O*"XS")(F+(h.."eJ")((p.."Aq")[c^"j6"],206));(O*"Lk")(k^false)end while F-"teb"==89 do(K+"wD")[C+"Yh"]=not(K+"PH")[C+"Ff"]V=V+1;(O*"rnb")(c[j^"fob"+(V-1)*4]);(O*"omb")(F+(h.."KB")((p.."Deb")[c^"ge"],206));(O*"Sg")(k^false)end while F-"AG"==235 do(O*"Q4")(U-(U^"H9")[0])V=V+1;(O*"X8")(c[j^"T0"+(V-1)*4]);(O*"Mnb")(F+(h.."Xkb")((p.."GC")[c^"vn"],206));(O*"Ss")(k^false)end while F-"cfb"==24 do(K+"Wi")[(C+"s")+1]=true;(O*"yeb")(C[(C+"w_")+1])V=V+1;(O*"ZE")(c[j^"rt"+(V-1)*4]);(O*"Ufb")(F+(h.."nnb")((p.."nT")[c^"zF"],206));(O*"q1")(k^false)end while F-"Ew"==187 do(O*"Ds")(C[(C+"YI")+1]);(K+"Ns")[C+"UY"]={}V=V+1;(O*"le")(c[j^"Ec"+(V-1)*4]);(O*"lx")(F+(h.."nu")((p.."zw")[c^"FH"],206));(O*"yc")(k^false)end while F-"zpb"==200 do if C+"TX">0 then(O*"acb")(x*(K+"dB")[C+"Hq"])else(O*"Xm")(x*nil)end;(O*"Vs")(K^(K+"R9")[0]);(O*"tp")(C[(K+"xD")[(Z-"Mn").D(40131,40049,39294)]+1]);(K+"w")[C+"h6"]=x.."lk"V=V+1;(O*"oE")(c[j^"iC"+(V-1)*4]);(O*"ZW")(F+(h.."fJ")((p.."d")[c^"Fg"],206));(O*"Md")(k^false)end while F-"Sc"==228 do x.g_,(K+"deb")[C+"HS"]=(K+"Z_")[C+"Go"],nil for V,b in ipairs(x.."Yi")do(K+"Wu")[C+"MV"]=b;(O*"oZ")(C[(C+"Op")+1])end;(O*"L6")(C[(C+"r6")-1])V=V+1;(O*"S3")(c[j^"d3"+(V-1)*4]);(O*"xdb")(F+(h.."qib")((p.."Hr")[c^"Cg"],206));(O*"bE")(k^false)end while F-"Yd"==55 do(K+"ws")[(Z-"XR").A(-14785,-16167,-15206)]=C+"ln";(O*"YI")(C[0]);(O*"dZ")(K^{[0]=K+"Jhb"})V=V+1;(O*"Wi")(c[j^"xG"+(V-1)*4]);(O*"Dx")(F+(h.."u8")((p.."E7")[c^"Vab"],206));(O*"w")(k^false)end while F-"Ev"==168 do(O*"PX")(x*U^"xG")for V=1,(T-"Ff")(c^"I0"+3,1,82),1 do(O*"CU")(x*(x.."mJ")[0])end;(x.."Cjb")[(T-"gab")(c^"dZ"+1,2,221,144)]=(K+"D6")[C+"Xq"];(K+"I8")[C+"LG"]=nil;(O*"W3")(C[(C+"Adb")-1])V=V+1;(O*"Ze")(c[j^"F_"+(V-1)*4]);(O*"vp")(F+(h.."Iib")((p.."KY")[c^"Mk"],206));(O*"hu")(k^false)end while F-"T0"==241 do(O*"H1")(C[(C+"yF")+1]);(K+"KV")[C+"Kab"]=(n*"lG")((u*"Pb")[(T-"Zv")(c^"zt"+1,3,221,144,82)],e,U^"fT")V=V+1;(O*"eS")(c[j^"bib"+(V-1)*4]);(O*"KX")(F+(h.."I7")((p.."rY")[c^"o1"],206));(O*"Rp")(k^false)end while F-"eY"==167 do(O*"reb")(K^{[0]=(K+"E7")[0]});(O*"jI")(C[0])V=V+1;(O*"wA")(c[j^"Wdb"+(V-1)*4]);(O*"cO")(F+(h.."Yx")((p.."v5")[c^"J1"],206));(O*"kbb")(k^false)end while F-"Gpb"==175 do(O*"jX")(C[(C+"XJ")-1]);(K+"tW")[(C+"GP")+1]=nil V=V+1;(O*"C9")(c[j^"QK"+(V-1)*4]);(O*"Bl")(F+(h.."et")((p.."jm")[c^"G5"],206));(O*"Zs")(k^false)end while F-"FE"==112 do(O*"Ke")(x*{})for V,b in ipairs(K+"N8")do(x.."FR")[V]=b end;(O*"mt")(C[1]);(O*"su")(K^{[0]=(K+"uC")[0],[1]=x.."qu"})V=V+1;(O*"nw")(c[j^"mr"+(V-1)*4]);(O*"Bw")(F+(h.."Sfb")((p.."MW")[c^"tjb"],206));(O*"wh")(k^false)end while F-"u5"==243 do(O*"L8")(x*U^"vT")for V=1,(T-"Zcb")(c^"As"+3,1,82),1 do(O*"xz")(x*(x.."m4")[0])end;(K+"Gc")[(C+"Kob")+1]=(x.."Ndb")[(T-"TR")(c^"he"+1,2,221,144)];(O*"vu")(C[(C+"zE")+1])V=V+1;(O*"Fx")(c[j^"Wbb"+(V-1)*4]);(O*"Ss")(F+(h.."v2")((p.."Dhb")[c^"Fe"],206));(O*"aO")(k^false)end while F-"W5"==144 do(K+"JH")[(Z-"reb").D(39963,40200,39294)]=C+"gv";(O*"Ai")(K^{[0]=K+"W6",[1]=(K+"fdb")[C+"NB"]});(O*"Pfb")(C[1])V=V+1;(O*"LU")(c[j^"YZ"+(V-1)*4]);(O*"Zlb")(F+(h.."yjb")((p.."Vc")[c^"Lr"],206));(O*"jq")(k^false)end while F-"DD"==251 do(O*"nw")(C[(C+"Ye")-1]);(K+"yfb")[C+"pT"],(K+"vpb")[(C+"LL")+1]=(K+"j_")[C+"ZJ"]==(K+"Jb")[(C+"gE")+1],nil V=V+1;(O*"Bc")(c[j^"Mcb"+(V-1)*4]);(O*"pC")(F+(h.."Veb")((p.."tl")[c^"ohb"],206));(O*"DN")(k^false)end while F-"lt"==109 do if(K+"aeb")[C+"rgb"]then V=(T-"iT")(c^"XR"+1,3,221,144,82)-1 end;(K+"Vlb")[C+"vq"]=nil;(O*"Zz")(C[(C+"zM")-1])V=V+1;(O*"Ts")(c[j^"iX"+(V-1)*4]);(O*"aY")(F+(h.."s8")((p.."Rcb")[c^"Xcb"],206));(O*"kbb")(k^false)end while F-"zcb"==27 do(K+"Xu")[(C+"Sm")-1]=(K+"Mm")[(C+"t0")-1]..(K+"r0")[C+"ccb"];(K+"dT")[C+"ER"]=nil;(O*"B7")(C[(C+"pS")-1])V=V+1;(O*"lv")(c[j^"Hab"+(V-1)*4]);(O*"qC")(F+(h.."UW")((p.."s")[c^"MX"],206));(O*"M6")(k^false)end while F-"EG"==193 do(K+"vi")[C+"Cy"]=e[(K+"ae")[C+"Ns"]]V=V+1;(O*"KD")(c[j^"hl"+(V-1)*4]);(O*"FQ")(F+(h.."bn")((p.."Cp")[c^"H9"],206));(O*"xf")(k^false)end while F-"vk"==223 do V=(T-"tX")(c^"HO"+1,3,221,144,82)-1 V=V+1;(O*"p6")(c[j^"lkb"+(V-1)*4]);(O*"aI")(F+(h.."RT")((p.."Hh")[c^"ov"],206));(O*"sE")(k^false)end while F-"cZ"==163 do(O*"CJ")(C[(C+"g7")-2])e[(K+"Bnb")[(C+"cc")+1]]=(K+"Ry")[(C+"Ynb")+2];(K+"dX")[(C+"kb")+1],(K+"aA")[(C+"h4")+2]=nil,nil V=V+1;(O*"qL")(c[j^"pk"+(V-1)*4]);(O*"Pe")(F+(h.."Qab")((p.."Jz")[c^"hA"],206));(O*"i_")(k^false)end while F-"wo"==202 do(O*"Dz")(C[(C+"Nj")-1]);(K+"vf")[C+"eY"],(K+"QR")[(C+"fk")+1]=(K+"Xbb")[C+"dX"][(K+"O3")[(C+"WT")+1]],nil V=V+1;(O*"RN")(c[j^"Pj"+(V-1)*4]);(O*"wD")(F+(h.."ks")((p.."ecb")[c^"TJ"],206));(O*"p2")(k^false)end while F-"B6"==245 do(K+"xeb")[C+"sE"]=(K+"M8")[(C+"Dk")-1][(K+"Gpb")[C+"pT"]]V=V+1;(O*"mib")(c[j^"GI"+(V-1)*4]);(O*"Dgb")(F+(h.."Ph")((p.."SZ")[c^"to"],206));(O*"ekb")(k^false)end while F-"Vy"==196 do return(K+"sc")[C+"Hbb"]end if k.MK then V=V+1;(O*"kx")(c[j^"fF"+(V-1)*4]);(O*"RA")(F+(h.."CO")((p.."KR")[c^"xhb"],206))end end end]);(O*"dN")(a-function(V)local N=S({nL={k=function(V,b,d)return(z*"lQ")(V-28925)end,N=function(V,b,d)return(z*"xT")(d+294)end,o=function(V,b,d)return(z*"iG")(V+24957)end}},{__add=function(V,b)V.nL=b end,__pow=function(V,b)return V.nL end})local b=S({pf={}},{__pow=function(V,b)V.pf=b end,__concat=function(V,b)return V.pf end})for d=0,7,1 do(b.."im")[d+1]=(p.."CM")[V+d]end local d=S({lfb=1},{__div=function(V,b)V.lfb=b end,__concat=function(V,b)return V.lfb end})local e=S({Fv=(b.."Yn")[2]%16},{__concat=function(V,b)V.Fv=b end,__sub=function(V,b)return V.Fv end})for V=3,8,1 do(O*"nc")(e..(e-"oK")*256+(b.."t8")[V])end if(b.."Su")[1]>127 then(O*"DQ")(d/-1)end local j=S({Ht=(b.."Z8")[1]%128*16+(U.."Vdb")((b.."Kq")[2]/16)},{__pow=function(V,b)V.Ht=b end,__sub=function(V,b)return V.Ht end})if j-"Qcb"==0 then return 0 end;(O*"nS")(e..((g+"y8")(e-"Lr",-52)+1)*(d.."Jgb"))return(g+"phb")(e-"Dw",(j-"zpb")-1023)end);(O*"Po")(y*function(V,b,d,...)local p=S({bN={d=function(V,b,d)return(z*"UJ")(d-59299)end,u=function(V,b,d)return(z*"VI")(V-40694)end,x=function(V,b,d)return(z*"bz")(V+12434)end}},{__pow=function(V,b)V.bN=b end,__div=function(V,b)return V.bN end})local e=S({WF=0},{__index=function(V,b)V.WF=b end,__concat=function(V,b)return rawget(V,"WF")end})for d=0,31,1 do local j=S({yY=V/2+b/2},{__sub=function(V,b)V.yY=b end,__div=function(V,b)return V.yY end})if j/"cB"~=(U.."MM")(j/"Ql")then(O*"xx")(e[(e.."wjb")+2^d])end V=(U.."jB")(V/2)b=(U.."y6")(b/2)end if d then return y.Sc(e.."G5",d,...)end return e.."Q9"end);(O*"ncb")(p*(m+"Qe")({15,79,82,17,31,5,53,61,33,11,52,19,27,40,78,32,76,18,48,75,16,23,84,42,59,36,30,4,83,56,54,80,71,47,55,34,81,29,68,67,21,74,60,73,3,46,43,2,35,8,10,1,38,22,62,63,57,70,13,14,50,28,12,7,9,69,49,39,65,37,20,45,44,6,77,64,26,66,58,25,51,41,72,24,(J+"Olb").c(-17475,-17086,-16579),(J+"yq").B(55517,55603,55461),(J+"Z4").c(-17523,-18456,-16642),(J+"A9").E(-3171,-2440,-2795),(J+"Rbb").c(-17491,-17016,-17289),(J+"rbb").c(-17490,-18273,-18396),(J+"Zib").B(55521,55709,54947),(J+"bR").E(-2069,-2384,-2735),(J+"Z").E(-2396,-2436,-2505),(J+"a7").c(-17489,-17118,-18028),(J+"RD").E(-3173,-2420,-2328),(J+"Nn").B(55542,56163,54586),(J+"Mb").c(-17525,-17579,-17705),(J+"zi").B(55504,56444,56451),(J+"qA").c(-17466,-18124,-17036),(J+"L1").c(-17447,-18072,-17356),(J+"t6").E(-3322,-2381,-2774),(J+"TZ").B(55554,56509,54749),(J+"iG").c(-17435,-17904,-17983),(J+"aP").B(55531,54928,54772),(J+"sB").B(55574,54853,55800),(J+"PW").B(55487,54637,55181),(J+"YP").E(-1422,-2421,-2201),(J+"dE").E(-2127,-2460,-1442),(J+"nz").E(-2575,-2438,-1532),(J+"XD").E(-1576,-2478,-3251),(J+"ogb").E(-2492,-2426,-1997),(J+"Geb").E(-1994,-2403,-1460),(J+"jm").c(-17437,-17485,-17807),(J+"lE").B(55571,55874,54593),(J+"VS").c(-17462,-17284,-17851),(J+"kB").E(-2857,-2424,-2415),(J+"AE").c(-17511,-17453,-17452),(J+"bpb").E(-2219,-2428,-2055),(J+"jhb").c(-17452,-16976,-17114),(J+"zgb").B(55505,55270,55090),(J+"rM").c(-17531,-18516,-17540),(J+"Klb").c(-17479,-17556,-17450),(J+"apb").E(-1701,-2413,-1975),(J+"rR").c(-17461,-16880,-17273),(J+"Ov").c(-17534,-18530,-16595),(J+"xpb").B(55557,55768,54911),(J+"jz").E(-1904,-2406,-3238),(J+"eG").E(-3016,-2427,-2027),(J+"id").B(55510,55978,55403),(J+"DM").E(-2657,-2431,-2446),(J+"HX").B(55477,54571,56254),(J+"Kv").E(-2256,-2410,-3357),(J+"jj").E(-1461,-2429,-1537),(J+"lV").c(-17455,-17048,-17655),(J+"ft").E(-1816,-2388,-1400),(J+"jZ").B(55514,55104,55066),(J+"rm").c(-17480,-16533,-18347),(J+"OJ").E(-2350,-2457,-2911),(J+"nr").c(-17449,-17000,-16971),(J+"ok").E(-2312,-2376,-2717),(J+"zw").B(55508,55408,54586),(J+"Xu").B(55484,55886,56008),(J+"Qr").E(-1984,-2387,-2577),(J+"Zeb").c(-17512,-16829,-18185),(J+"m5").B(55480,56004,54505),(J+"gL").E(-2360,-2458,-3456),(J+"XS").c(-17530,-16875,-17126),(J+"De").c(-17521,-17272,-18290),(J+"vp").c(-17476,-18149,-18386),(J+"iL").c(-17532,-18390,-18541),(J+"umb").E(-2952,-2415,-3046),(J+"wmb").E(-2327,-2447,-2206),(J+"Xob").B(55526,54986,56031),(J+"HC").E(-1497,-2461,-2523),(J+"Kfb").c(-17465,-17105,-17119),(J+"RJ").B(55494,55490,55406),(J+"lI").B(55507,55872,54845),(J+"UY").B(55560,56466,56352),(J+"kdb").B(55577,56517,54970),(J+"rX").E(-3239,-2445,-3434),(J+"mI").E(-3458,-2450,-2010),(J+"hm").E(-2964,-2407,-2258),(J+"job").B(55486,55086,54528),(J+"fw").E(-1513,-2456,-2665),(J+"ir").B(55565,56259,55441),(J+"Igb").E(-3057,-2437,-1565),(J+"UH").E(-1906,-2453,-3375),(J+"Bj").B(55556,54597,55070)}));(O*"jnb")(V/function(V)local w=S({tH={W=function(V,b,d)return(z*"pib")(V+1795)end,v=function(V,b,d)return(z*"sib")(V+2191)end,z=function(V,b,d)return(z*"o0")(b-20100)end}},{__div=function(V,b)V.tH=b end,__add=function(V,b)return V.tH end})local e=S({GW=function(V)local d=S({Kj={C=function(V,b,d)return(z*"O0")(V-54597)end,p=function(V,b,d)return(z*"Tu")(V+21422)end,l=function(V,b,d)return(z*"Oab")(d-33144)end}},{__concat=function(V,b)V.Kj=b end,__sub=function(V,b)return V.Kj end})local b=S({fz=(d-"Qy").p(-12132,-12638,-12229)},{__div=function(V,b)V.fz=b end,__sub=function(V,b)return V.fz end})for d=1,#V/2,1 do(O*"fH")(b/(b-"pq"..V[#V/2+V[d]]))end return b-"dc"end},{__div=function(V,b)V.GW=b end,__add=function(V,b)return V.GW end})local d=S({O3={}},{__add=function(V,b)V.O3=b end,__div=function(V,b)return V.O3 end})V=G.o1(G.B_(V,(w+"yE").z(29366,29296,28621),function(V)local N=S({Wm={x=function(V,b,d)return(z*"Kt")(d+11548)end,e=function(V,b,d)return(z*"hG")(d+52608)end,u=function(V,b,d)return(z*"VL")(d-47764)end}},{__index=function(V,b)V.Wm=b end,__concat=function(V,b)return rawget(V,"Wm")end})if V==(N.."BS").x(-3323,-2957,-2341)then return(N.."kT").e(-44152,-43572,-43318)end local d,j=S({RQ=(N.."ppb").x(-3047,-2476,-2258)},{__index=function(V,b)V.RQ=b end,__add=function(V,b)return rawget(V,"RQ")end}),S({w9=(b/"IB")(t.pN,V)-1},{__div=function(V,b)V.w9=b end,__add=function(V,b)return V.w9 end})for V=6,1,-1 do(O*"xl")(d[d+"QS"..((j+"qS")%2^V-(j+"gU")%2^(V-1)>0 and(N.."Ng").e(-43942,-43086,-43400)or(N.."Q1").u(57140,57669,56966))])end return d+"mjb"end),(e+"ql")({1,2,(w+"bt").v(7093,6071,7888),(w+"ghb").v(7064,7199,6649)}),function(V)local j=S({nR={u=function(V,b,d)return(z*"d4")(d-55531)end,T=function(V,b,d)return(z*"Es")(V-60667)end,A=function(V,b,d)return(z*"D0")(b-31672)end}},{__mul=function(V,b)V.nR=b end,__pow=function(V,b)return V.nR end})if#V~=8 then return(j^"xf").A(39991,40962,41483)end local b=S({to=0},{__sub=function(V,b)V.to=b end,__pow=function(V,b)return V.to end})for d=1,8,1 do(O*"vm")(b-(b^"yX"+(K.Au(V,d,d)==(j^"Xfb").A(41254,40880,41402)and 2^(8-d)or 0)))end return A.hK(b^"nbb")end)for b=1,#V,1 do(d/"Ocb")[b]=(l*"Vp")(V,b)end return d/"Zq"end);(O*"tt")(P-(bit32 and bit32[(J+"L6").c(-17500,-17276,-17193)]));(O*"ZE")(b-string[(J+"emb").B(55562,56008,55902)]);(O*"X4")(g[math[(J+"PT").E(-2709,-2463,-1847)]]);(O*"rB")(G..string[(J+"Elb").c(-17474,-18244,-16649)]);(O*"Rt")(t-(H/"YH")({3,2,1,(J+"IL").c(-17450,-17287,-17079),(J+"iG").B(55489,55280,55397),(J+"eib").E(-2600,-2411,-1694)}));(O*"cmb")(U^math[(J+"UQ").B(55570,55144,55587)]);(O*"NN")(C/function()local d=S({M8={s=function(V,b,d)return(z*"leb")(b+35609)end,d=function(V,b,d)return(z*"Hw")(b-19732)end,K=function(V,b,d)return(z*"tob")(V+44497)end}},{__add=function(V,b)V.M8=b end,__index=function(V,b)return rawget(V,"M8")end});(O*"hB")(e*(T-"sx")(1,3));(O*"Nr")(u[{}])for V=0,e.IO-1,1 do(u*"LH")[V+1]=(T-"iN")(j^"b7"+V*3,3)end;(O*"xD")(j[j^"Pib"+e.g3*3]);(O*"fw")(x^(T-"ngb")(j^"F4",3))for V=0,(x-"Tg")-1,1 do(N*"d1")[V+1]=(T-"EU")((j^"vob"+3)+V*4,4)end;(O*"Mu")(j[(j^"yS"+(x-"lH")*4)+6]);(O*"bD")(Z*(T-"eK")(j^"Vhb"-3,3));(O*"ZG")(M+(j^"OX"+Z^"oR"*4))end);(O*"nJ")(F+function()local e=S({by={h=function(V,b,d)return(z*"lE")(d+37113)end,p=function(V,b,d)return(z*"Qnb")(d-7285)end,P=function(V,b,d)return(z*"pb")(d+59535)end}},{__add=function(V,b)V.by=b end,__sub=function(V,b)return V.by end});(O*"Dgb")(h-(P*"fA"or y.Uy));(O*"m3")(p*(V+"BD")(p.."Nr"))C.VH()return((n*"Tmb")((u*"Ujb")[1],(k*"Ykb")()))()end);(O*"g5")(l-string[(J+"j").E(-2675,-2401,-1966)]);(O*"xQ")(w/{});(O*"rl")(k[getfenv]);(O*"Fc")(u[{}]);(O*"fe")(T/function(V,b,...)local N=S({z={k=function(V,b,d)return(z*"rkb")(b+42801)end,o=function(V,b,d)return(z*"Fd")(d-45707)end,x=function(V,b,d)return(z*"SI")(d+29141)end}},{__index=function(V,b)V.z=b end,__add=function(V,b)return rawget(V,"z")end})local d=S({dr={...}},{__add=function(V,b)V.dr=b end,__div=function(V,b)return V.dr end})local e=S({I5=0},{__mul=function(V,b)V.I5=b end,__pow=function(V,b)return V.I5 end})local j=S({Yn=1},{__concat=function(V,b)V.Yn=b end,__sub=function(V,b)return V.Yn end})for b=0,b-1,1 do(O*"xh")(e*(e^"cmb"+(h.."Geb")((p.."Yfb")[V+b],d/"Og"and(d/"pbb")[b+1]or 0)*(j-"dS")));(O*"pcb")(j..(j-"iL")*256)end return e^"G8"end);(O*"FR")(N^{});(O*"NM")(K^string[(J+"Lm").B(55512,55906,54732)]);(O*"NK")(c-table[(J+"Ku").B(55567,54866,54887)]);(O*"AL")(A*string[(J+"kX").E(-2048,-2441,-1573)]);(O*"n0")(n/function(V,b,e)local p=S({ow={u=function(V,b,d)return(z*"eh")(b+14340)end,m=function(V,b,d)return(z*"ZV")(V+15061)end,M=function(V,b,d)return(z*"tC")(V+36260)end}},{__pow=function(V,b)V.ow=b end,__div=function(V,b)return V.ow end})return function(...)local p=S({bU={J=function(V,b,d)return(z*"BN")(b-52480)end,I=function(V,b,d)return(z*"u_")(V-31413)end,F=function(V,b,d)return(z*"ot")(V-11062)end}},{__concat=function(V,b)V.bU=b end,__div=function(V,b)return V.bU end})return(d-"vg")((v*"cn")(V,{...},b,e))end end);(O*"Ocb")(d^(table and table[(J+"yU").B(55559,55752,54930)]or unpack));(O*"pk")(j[4])return(F*"X6")()end)()
