package;

import lime.utils.Assets;
import haxe.Json;
import haxe.format.JsonParser;

using StringTools;

class CoolUtil
{
	public static var difficultyArray:Array<String> = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];

	public static function difficultyFromInt(difficulty:Int):String
	{
		return difficultyArray[difficulty];
	}

	inline static public function parseSongJSON(key:String)
	{
		return haxe.Json.parse(Assets.getText(Paths.json(key)));
	}

	public static function coolTextFile(path:String):Array<String>
	{
		var daList:Array<String> = Assets.getText(path).trim().split('\n');

		for (i in 0...daList.length)
		{
			daList[i] = daList[i].trim();
		}

		return daList;
	}
	
	public static function coolStringFile(path:String):Array<String>
		{
			var daList:Array<String> = path.trim().split('\n');
	
			for (i in 0...daList.length)
			{
				daList[i] = daList[i].trim();
			}
	
			return daList;
		}

	public static function numberArray(max:Int, ?min = 0):Array<Int>
	{
		var dumbArray:Array<Int> = [];
		for (i in min...max)
		{
			dumbArray.push(i);
		}
		return dumbArray;
	}
}
