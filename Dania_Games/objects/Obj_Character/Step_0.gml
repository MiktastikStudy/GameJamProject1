/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FC5E2D8
/// @DnDInput : 2
/// @DnDArgument : "var" "move_count"
/// @DnDArgument : "value" "abs(vel_x)"
/// @DnDArgument : "var_1" "move_amount"
/// @DnDArgument : "value_1" "sign(vel_x)"
var move_count = abs(vel_x);
var move_amount = sign(vel_x);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 6AFF7A2F
/// @DnDArgument : "times" "move_count"
repeat(move_count)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 188EEB42
	/// @DnDInput : 2
	/// @DnDParent : 6AFF7A2F
	/// @DnDArgument : "var" "collision_found"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "check_collision"
	/// @DnDArgument : "arg" "move_amount"
	/// @DnDArgument : "arg_1" "0"
	var collision_found = check_collision(move_amount, 0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AAAC2B9
	/// @DnDParent : 6AFF7A2F
	/// @DnDArgument : "var" "collision_found"
	/// @DnDArgument : "value" "false"
	if(collision_found == false)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 6746C249
		/// @DnDParent : 6AAAC2B9
		/// @DnDArgument : "value" "move_amount"
		/// @DnDArgument : "value_relative" "1"
		x += move_amount;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 51553D48
	/// @DnDParent : 6AFF7A2F
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 56C38905
		/// @DnDParent : 51553D48
		/// @DnDArgument : "var" "vel_x"
		vel_x = 0;
	
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 47DF35D4
		/// @DnDParent : 51553D48
		break;
	}
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 74B37EE9
/// @DnDInput : 2
/// @DnDArgument : "var" "move_count"
/// @DnDArgument : "value" "abs(vel_y)"
/// @DnDArgument : "var_1" "move_amount"
/// @DnDArgument : "value_1" "sign(vel_y)"
var move_count = abs(vel_y);
var move_amount = sign(vel_y);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 68C94239
/// @DnDArgument : "times" "move_count"
repeat(move_count)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 78234EEC
	/// @DnDInput : 2
	/// @DnDParent : 68C94239
	/// @DnDArgument : "var" "collision_found"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "check_collision"
	/// @DnDArgument : "arg" "0"
	/// @DnDArgument : "arg_1" "move_amount"
	var collision_found = check_collision(0, move_amount);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 450C8CD9
	/// @DnDParent : 68C94239
	/// @DnDArgument : "var" "collision_found"
	/// @DnDArgument : "value" "false"
	if(collision_found == false)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 412D74DE
		/// @DnDParent : 450C8CD9
		/// @DnDArgument : "value" "move_amount"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "1"
		y += move_amount;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 647A43DB
	/// @DnDParent : 68C94239
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41B9155D
		/// @DnDParent : 647A43DB
		/// @DnDArgument : "var" "vel_y"
		vel_y = 0;
	
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 1610E60A
		/// @DnDParent : 647A43DB
		break;
	}
}