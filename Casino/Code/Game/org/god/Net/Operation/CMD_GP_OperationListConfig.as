﻿package org.god.Net.Operation
{
	import flash.utils.ByteArray;
	import flash.utils.Endian;

	//获取操作记录配置
	public class CMD_GP_OperationListConfig
	{
		public static  const sizeof_CMD_GP_OperationListConfig:int=2 + 2 + 2 + 4;

		public var wPageIndex:uint;//页索引
		public var wPageSize:uint;//页大小
		public var wResultCount:uint;//返回记录数目
		public var dwTotalResultCount:uint;//记录总数

		public function CMD_GP_OperationListConfig()
		{
		}
		public static function readData(data:ByteArray):CMD_GP_OperationListConfig
		{
			var pos:int=data.position;
			var result:CMD_GP_OperationListConfig=new CMD_GP_OperationListConfig;
			result.wPageIndex = data.readUnsignedShort();
			result.wPageSize = data.readUnsignedShort();
			result.wResultCount = data.readUnsignedShort();
			result.dwTotalResultCount = data.readUnsignedInt();
			data.position=pos;
			return result;
		}
	}
}
include "../GLOBALDEF.as"
include "../../Common/Memory.as"