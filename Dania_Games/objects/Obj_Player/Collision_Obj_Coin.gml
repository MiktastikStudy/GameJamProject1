/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 32B8A486
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "coins"
coins += 1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 78DD5010
/// @DnDArgument : "xpos" "other.x"
/// @DnDArgument : "ypos" "other.y"
/// @DnDArgument : "objectid" "obj_coin_collect_effect"
/// @DnDSaveInfo : "objectid" "obj_coin_collect_effect"
instance_create_layer(other.x, other.y, "Instances", obj_coin_collect_effect);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 7BED2572
/// @DnDArgument : "soundid" "snd_coin_collect_01"
/// @DnDSaveInfo : "soundid" "snd_coin_collect_01"
audio_play_sound(snd_coin_collect_01, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6716BB7F
/// @DnDApplyTo : other
with(other) instance_destroy();