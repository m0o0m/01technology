﻿package
{
	import flash.display.BitmapData;
	//博彩游戏现场投注按钮
	public class LotteryMonitorTab extends BaseMonitorTab
	{
		public function LotteryMonitorTab()
		{
			super();
		}
		protected override function CreateBackgroundBitmapData():BitmapData
		{
			return new IMAGE_BATTLE_TAB(820,548);
		}
		public override function GetMonitorTitle():String
		{
			return m_gameKind.toString() + "--" + m_gameServer.toString();
		}
	}
}
include "../ConstantDef.as"
include "../StringTableDef.as"
include "../../../Common/StringTableDef.as"