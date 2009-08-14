﻿package org.god.GameModule.B_Upgrade.Common
{
	import flash.utils.ByteArray;

	//游戏状态
	public class CMD_S_StatusFree
	{
		public static  const sizeof_CMD_S_StatusFree:uint=8;

		public var fBaseScore:Number=0;//基础积分
		public function CMD_S_StatusFree()
		{
		}
		public static  function readData(data:ByteArray):CMD_S_StatusFree
		{
			var pos:int=data.position;
			var result:CMD_S_StatusFree=new CMD_S_StatusFree  ;
			result.fBaseScore=data.readDouble();
			data.position=pos;
			return result;
		}
	}
}
include "./CMD_Upgrade.as"
include "../../../Common/Memory.as"