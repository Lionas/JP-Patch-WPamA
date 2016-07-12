WPamA.ShowMsg = false
WPamA.TbColors = {}
WPamA.ChmPoints = GetPlayerChampionPointsEarned()
WPamA.EnlitState = false

function WPamA:GetColor(num)
  local z = 5
  if num ~= nil then
    if self.TbColors[num] ~= nil then
      z = num
    end
  end
  return self.TbColors[z].r, self.TbColors[z].g,  self.TbColors[z].b,  self.TbColors[z].a
end

function WPamA:LoadTbColors()
  for i=1, #self.Colors.Mdl do
    local addColor = { r = 1, g = 1, b = 1, a = 1 }
    if self.Colors.Mdl[i] ~= nil then
      if string.len(self.Colors.Mdl[i]) >= 6 then 
        local rhex, ghex, bhex = string.sub(self.Colors.Mdl[i], 1, 2), string.sub(self.Colors.Mdl[i], 3, 4), string.sub(self.Colors.Mdl[i], 5, 6)
        addColor.r = tonumber(rhex, 16)/255
        addColor.g = tonumber(ghex, 16)/255
        addColor.b = tonumber(bhex, 16)/255
        if string.len(self.Colors.Mdl[i]) >= 8 then 
          local ahex = string.sub(self.Colors.Mdl[i], 7, 8)
          addColor.a = tonumber(ahex, 16)/255
        end
      end
    end
    table.insert(self.TbColors, addColor)
  end
end

function WPamA:UI_InitMainWindow()
-- Create UI controls and links for quick access
  self.ctrlRows = {}
  self.ctrlWMsg = {}
-- Main: Header
  self.ctrlRows[0] = {
    Row = GetControl(WPamA_Win,"Headers"),
  }
  local r = self.ctrlRows[0]
  r.Lvl = GetControl(r.Row, "Lvl")
  r.Char = GetControl(r.Row, "Char")
  r.MSL = GetControl(r.Row, "MSL")
  self.SetToolTip(r.MSL, 8)
  r.Silver = GetControl(r.Row, "Silver")
  r.Gold = GetControl(r.Row, "Gold")
  r.B = {}
  for j=1,7 do
    r.B[j] = GetControl(r.Row, "B" .. j)
  end
-- Main: Rows
  for i=1,self.Consts.RowCnt do
    self.ctrlRows[i] = {
      Row = CreateControlFromVirtual("WPamA_WinRow", WPamA_Win, "WPamA_WinVRow", i),
    }
    local r = self.ctrlRows[i]
    r.Row:SetAnchor(TOPLEFT, self.ctrlRows[i-1].Row, BOTTOMLEFT, 0, 0)
    r.BG = GetControl(r.Row, "BG")
    r.BG:SetAnchorFill()
    --r.BG:SetAnchor(TOPLEFT, r.Row, TOPLEFT, 0, -1)
    --r.BG:SetDimensions(self.Consts.WinSizeMinX, self.Consts.WinSizeStepY+2)
    r.BG:SetCenterColor(self:GetColor(self.Colors.BGCenter))
    r.BG:SetEdgeColor(self:GetColor(self.Colors.BGEdge))
    r.Lvl = GetControl(r.Row, "Lvl")
    r.Char = GetControl(r.Row, "Char")
    r.SilverAct = GetControl(r.Row, "SilverAct")
    r.MSL = GetControl(r.Row, "MSL")
    r.Silver = GetControl(r.Row, "Silver")
    r.GoldAct = GetControl(r.Row, "GoldAct")
    r.Gold = GetControl(r.Row, "Gold")
    r.B = {}
    for j=1,7 do
      r.B[j] = GetControl(r.Row, "B" .. j)
    end
    r.B[7]:SetColor(self:GetColor(self.Colors.WWBAchiev))
  end
-- Main: Msg
  self.ctrlWMsg = {
    Txt = GetControl(WPamA_Msg,"Txt"),
    B = {},
  }
  for j=1,7 do
    self.ctrlWMsg.B[j] = GetControl(WPamA_Msg, "B" .. j)
  end
-- Main: Button
  self.SetToolTip(WPamA_WinClose, 0)
  self.SetToolTip(WPamA_WinOptions, 1)
  self.SetToolTip(WPamA_WinSwap, 2)
  self.SetToolTip(WPamA_WinChatTd, 3)
-- Options
  WPamA_OptLocationTxt:SetText(self.i18n.OptLocation)
  WPamA_OptENDungTxt:SetText(self.i18n.OptENDungeon)
  WPamA_OptDontShowNoneTxt:SetText(self.i18n.OptDontShowNone)
  WPamA_OptTitleToolTipTxt:SetText(self.i18n.OptTitleToolTip)
  WPamA_OptResetChar:SetText(self.i18n.ResetChar) 
  self.SetToolTip(WPamA_OptResetChar, 10)
end 

function WPamA:UI_InitRGLAWindow()
  local i18n = self.i18n
-- RGLA Main
  self.ctrlRGLA = {}
  for j=1,6 do
    local b = GetControl(WPamA_RGLA, "B" .. j)
    b:SetText(self.Consts.DailyBoss[j].H)
    table.insert(self.ctrlRGLA, b)
  end
  self.SetToolTip(WPamA_RGLAClose, 0)
  self.SetToolTip(WPamA_RGLAOptions, 1)
  WPamA_RGLAStart:SetText(i18n.RGLAStart) 
  WPamA_RGLAPost:SetText(i18n.RGLAPost) 
  WPamA_RGLAStop:SetText(i18n.RGLAStop) 
  WPamA_RGLAShare:SetText(i18n.RGLAShare)
-- RGLA Options
  WPamA_RGLA_OptAutoShareTxt:SetText(i18n.RGLAOptQAutoShare)
  WPamA_RGLA_OptQAlertTxt:SetText(i18n.RGLAOptQAlert)
  WPamA_RGLA_OptQChatTxt:SetText(i18n.RGLAOptQChat)
  WPamA_RGLA_OptBossKilledTxt:SetText(i18n.RGLAOptBossKilled)
-- RGLA Msg
  for j=1,self.Consts.RGLAMsgCnt do
    GetControl(WPamA_RGLA_Msg, "Txt" .. j):SetText(i18n.RGLAMsg[j])
  end
end 

function WPamA:UI_UpdMainWindowSize(ShowMode, z, NextChar)
  local MsgText = ""
  local c = self.Consts
  local dx = c.WinSizeMinX
  local dy = c.WinSizeMinY
  if z == 0 then
    dy = dy + c.WinSizeStepY
    MsgText = self.i18n.NoCharErr
  elseif z == c.RowCnt and NextChar ~= nil  then
    dy = dy + c.WinSizeStepY * z
    MsgText = self.i18n.MoreCharErr
  else
    dy = dy + c.WinSizeStepY * z
  end
  WPamA_Win:SetDimensions(dx, dy)
 
  if ShowMode == 3 then
    MsgText = self.i18n.TotalRow
  end
  self.ShowMsg = MsgText ~= ""
  if WPamA_Msg ~= nil then
    local r = self.ctrlWMsg
    local q = true
    r.Txt:SetText(MsgText)
    if self.ShowMsg then
      WPamA_Msg:SetHidden(WPamA_Win:IsHidden())
    else
      WPamA_Msg:SetHidden(true)
    end
    if ShowMode == 3 then
      r.Txt:SetDimensions(c.MsgSizeMinX, c.MsgSizeMinY)
      q = false
    else
      r.Txt:SetDimensions(c.MsgSizeMaxX, c.MsgSizeMinY)
    end
    for j=1,7 do
      r.B[j]:SetHidden(q)
    end
  end
end 

function WPamA:GetChmpStr()
  local s = " (|cCFDCBD"
  if WPamA.EnlitState then
    s = s .. self.Consts.IconsW.ChmEnl
  else
    s = s .. self.Consts.IconsW.Chm
  end
  s = s .. tostring(self.ChmPoints) .. "|r)"
  return s
end 

function WPamA:UI_UpdMainWindowHdr(ShowMode)
  local i18n = self.i18n
  local q1, q2 = false, true
  local TitleTxt = self.Name .. " v" .. self.Version .. " - "
  local TitleNum = 0
  local TitleAdd = ""
  local r = self.ctrlRows[0]
  r.Lvl:SetText(i18n.HdrLvl)

  if ShowMode >= 2 then
    q1, q2 = true, false
    r.Lvl:SetHidden(false)
    r.Char:SetText(i18n.HdrName)
    if ShowMode == 2 then
      TitleTxt = TitleTxt .. i18n.CaptWWB
      TitleNum = 6
      for j=1,6 do
        r.B[j]:SetText(self.Consts.DailyBoss[j].H)
        self.SetToolTip(r.B[j], j + self.Consts.TTShiftWWB)
      end
      r.B[7]:SetText(self.Consts.IconsW.A)
      self.SetToolTip(r.B[7], 7 + self.Consts.TTShiftWWB)
    else
      TitleTxt = TitleTxt .. i18n.CaptInvt
      TitleNum = 7
      local InvtIco = self.Consts.InvtIco
      for j=1,7 do
        if j <= #InvtIco then
          r.B[j]:SetText(InvtIco[j].W)
          self.SetToolTip(r.B[j], j + self.Consts.TTShiftInvt)
        else
          r.B[j]:SetText("")
          self.SetToolTip(r.B[j], nil)
        end
      end
    end
  else
    r.MSL:SetText(i18n.HdrMSL)
    r.Silver:SetText(i18n.HdrSilver)
    r.Gold:SetText(i18n.HdrGold)
    if ShowMode == 1 then
      TitleTxt = TitleTxt .. i18n.CaptClnd
      TitleNum = 5
      r.Lvl:SetHidden(true)
      r.Char:SetText(i18n.HdrClnd)
    elseif ShowMode == 0 then
      if IsEnlightenedAvailableForAccount() then
        if WPamA.EnlitState then
          TitleAdd = i18n.EnlOn
        else
          TitleAdd = i18n.EnlOff
        end
      end
      TitleTxt = TitleTxt .. i18n.CaptChar .. self:GetChmpStr()
      TitleNum = 4
      r.Lvl:SetHidden(false)
      r.Char:SetText(i18n.HdrName)
    end
  end
--
  WPamA_WinTitle:SetText(TitleTxt)
  if self.savedVars.TitleToolTip then
    self.SetToolTip(WPamA_WinTitle, TitleNum, TitleAdd)
    WPamA_WinTitle:SetMouseEnabled(true)
  else
    self.DelToolTip(WPamA_WinTitle)
    WPamA_WinTitle:SetMouseEnabled(false)
  end
--
  for i=0,self.Consts.RowCnt do
    local r = self.ctrlRows[i]
    r.MSL:SetHidden(q1)
    r.Silver:SetHidden(q1)
    r.Gold:SetHidden(q1)
    if i > 0 then
      r.SilverAct:SetHidden(true)
      r.GoldAct:SetHidden(true)
    end
    for j=1,7 do
      r.B[j]:SetHidden(q2)
    end
  end
end 

-- ==== EVENT FUNCTIONS ==== --
-- Function header in this section must use "." instead ":".
-- Also inside the function can not be used "self".
-- Instead, it must explicitly specify the variable
function WPamA.DelToolTip(ctrl)
  ctrl:SetHandler("OnMouseEnter", nil)
  ctrl:SetHandler("OnMouseExit", nil)
end

function WPamA.SetToolTip(ctrl, var, addTxt)
  if var == nil or WPamA.i18n.ToolTip == nil then
    WPamA.DelToolTip(ctrl)
  else
    local txt = WPamA.i18n.ToolTip[var]
    if addTxt ~= nil and addTxt ~= "" then
      if txt == nil or txt == "" then
        txt = addTxt 
      else
        txt = txt .. "\n" .. addTxt 
      end
    end
    if txt == nil or txt == "" then
      WPamA.DelToolTip(ctrl)
    else
      ctrl:SetHandler("OnMouseEnter", function(self) ZO_Tooltips_ShowTextTooltip(ctrl, TOP, txt) end)
      ctrl:SetHandler("OnMouseExit", function(self) ZO_Tooltips_HideTextTooltip() end)
    end
  end
end