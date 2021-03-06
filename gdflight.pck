GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexP0      �      d�a;1s���mыei�-   res://Airplane.gd.remap �@      #       $�\�A��l+R�+��   res://Airplane.gdc         �      � �S#���.�$   res://Airplane.tscn        �      &���Ю�����'{՞&$   res://Assets/aircraft_material.tres �      �       �s�P�٪0�EJ���,   res://Assets/control_surface_material.tres         �       ���T[�������R��   res://Assets/ground.shader  �      �       T�Mp�</���å�   res://Assets/runway.shader  �      �      3GF�%m�����g?{   res://HUD.gd.remap  �@             �1����D� i�d�bn0   res://HUD.gdc   0      5      {B��m��ɏ����   res://HUD.tscn  p      �      �%�)��b�sP��>sd   res://Main.tscn 0!            ����@���q<�G   res://RB.gd.remap   �@             d��ֱY��%��?�P   res://RB.gdc@)      X      q3a���Pt���I�P��   res://default_env.tres  �.      �       um�`�N��<*ỳ�8   res://g.gd.remap�@             �`�%�D��Nn��   res://g.gdc P/      �       f�V(��$�f��eBF   res://icon.png  A      i      ����󈘥Ey��
�   res://icon.png.import    >      �      �����%��(#AB�   res://project.binary�N      �       ���-%9��\����GDSC   $      ;   �     ������ڶ   �����������   ��������   ���������ⶶ   �����������   ����������������   ��������򶶶   �����������   �����������   �����Ķ�   �������Ķ���   �������Ŷ���   �����¶�   ������������϶��   �������Ŷ���   ����׶��   �������������Ŷ�   ���������������Ŷ���   ����   ���������Ŷ�   ���Ŷ���   ������������¶��   �������Ķ���   ����������ض   �����������ض���   �����Ķ�   �Զ�   �����¶�   ��������۶��   ����Ŷ��   ������������������ڶ   Ҷ��   ����¶��   ����������������Ҷ��   �������Ӷ���   ���¶���     �?     �@     �D  ������@     �?   d        D                          ui_up         ui_down       ui_left       ui_right      ui_rudder_left        ui_rudder_right       ui_more_thrust        ui_less_thrust        ui_quit                                                   %   	   .   
   3      4      9      >      C      H      U      V      ]      d      h      ~            �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %     &     '     (     )     *   &  +   *  ,   3  -   7  .   @  /   D  0   M  1   Q  2   Z  3   ^  4   g  5   o  6   p  7   |  8   �  9   �  :   �  ;   3YY:�  Y:�  Z�  Y:�  �  Y:�  Z�  Y:�  �  Y:�  �  Y:�  �  �  �  Y:�  �  YY;�	  �  Y;�
  �  Y;�  �  Y;�  �  Y;�  �  P�  R�  R�	  QYY0�  P�  QV�  �  P�  �  Q�  �  PQ�  W�  T�  P�  �  R�  R�  R�  R�
  R�  R�	  QYY0�  PQV�  ;�  �  P�	  R�  R�  Q�  �  P�  RW�  �  R�
  Q�  �  P�  RW�  �  R�  Q�  �  P�  RW�  �  R�  Q�  �  �  P�  R�	  R�  Q�  �  P�  RW�  �  R�	  QYY0�  P�  R�  R�  QV�  �  T�  T�  �  PQ�  �  T�  P�  R�  �  QYY0�  P�  QV�  &�   T�!  P�
  QV�  �
  �  �  &�   T�!  P�  QV�  �
  �  �  &�   T�!  P�  QV�  �  �  �  &�   T�!  P�  QV�  �  �  �  &�   T�!  P�  QV�  �	  �  �  &�   T�!  P�  QV�  �	  �  �  &�   T�!  P�  QV�  �  �  �  &�   T�!  P�  QV�  �  �  �  &�   T�!  P�  QV�  �"  PQT�#  PQ�  �  �
  �5  P�
  R�	  R�	  Q�  �  �5  P�  R�	  R�	  Q�  �	  �5  P�	  R�	  R�	  Q�  �  �5  P�  R�  R�	  QY`      [gd_scene load_steps=8 format=2]

[ext_resource path="res://Airplane.gd" type="Script" id=1]
[ext_resource path="res://RB.gd" type="Script" id=2]
[ext_resource path="res://Assets/aircraft_material.tres" type="Material" id=3]
[ext_resource path="res://Assets/control_surface_material.tres" type="Material" id=4]

[sub_resource type="BoxShape" id=1]


[sub_resource type="CapsuleMesh" id=2]


[sub_resource type="CubeMesh" id=3]


[node name="Airplane" type="Spatial"]
script = ExtResource( 1 )

[node name="RB" type="RigidBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.5, 0 )
mass = 100.0
can_sleep = false
script = ExtResource( 2 )

[node name="BodyShape" type="CollisionShape" parent="RB"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 6, 0, 0, 0 )
shape = SubResource( 1 )

[node name="WingShape" type="CollisionShape" parent="RB"]
transform = Transform( 7, 0, 0, 0, 0.1, 0, 0, 0, 1, 0, 0, 0 )
shape = SubResource( 1 )

[node name="Undercarriage" type="CollisionShape" parent="RB"]
transform = Transform( 1, 0, 0, 0, 0.25, 0, 0, 0, 0.25, 0, -1.25, 2.35 )
shape = SubResource( 1 )

[node name="Body" type="MeshInstance" parent="RB"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 4, 0, 0, 0 )
mesh = SubResource( 2 )
material/0 = ExtResource( 3 )

[node name="Wing" type="MeshInstance" parent="RB"]
editor/display_folded = true
transform = Transform( 4, 0, 0, 0, 0.1, 0, 0, 0, 1, 0, 0, 0 )
mesh = SubResource( 3 )
material/0 = ExtResource( 3 )

[node name="Wing2" type="MeshInstance" parent="RB/Wing"]
transform = Transform( 0.375, 0, 0, 0, 1, 0, 0, 0, 0.5, -1.375, 0, 0.5 )
mesh = SubResource( 3 )
material/0 = ExtResource( 3 )

[node name="Wing3" type="MeshInstance" parent="RB/Wing"]
transform = Transform( 0.375, 0, 0, 0, 1, 0, 0, 0, 0.5, 1.375, 0, 0.5 )
mesh = SubResource( 3 )
material/0 = ExtResource( 3 )

[node name="Elevator" type="Spatial" parent="RB"]
editor/display_folded = true
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, -5.5 )

[node name="E" type="MeshInstance" parent="RB/Elevator"]
transform = Transform( 2, 0, 0, 0, 0.1, 0, 0, 0, 0.5, 0, 0, -0.5 )
mesh = SubResource( 3 )
material/0 = ExtResource( 4 )

[node name="Rudder" type="Spatial" parent="RB"]
editor/display_folded = true
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, -5.5 )

[node name="R" type="MeshInstance" parent="RB/Rudder"]
transform = Transform( -4.37114e-008, -0.1, 0, 1, -4.37114e-009, 0, 0, 0, 0.5, 0, 0.625, -0.5 )
mesh = SubResource( 3 )
material/0 = ExtResource( 4 )

[node name="LeftAileron" type="Spatial" parent="RB"]
editor/display_folded = true

[node name="LA" type="MeshInstance" parent="RB/LeftAileron"]
transform = Transform( 1.5, 0, 0, 0, 0.102, 0, 0, 0, 0.5, 5.5, 0, -0.5 )
mesh = SubResource( 3 )
material/0 = ExtResource( 4 )

[node name="RightAileron" type="Spatial" parent="RB"]
editor/display_folded = true

[node name="RA" type="MeshInstance" parent="RB/RightAileron"]
transform = Transform( 1.5, 0, 0, 0, 0.102, 0, 0, 0, 0.5, -5.5, 0, -0.5 )
mesh = SubResource( 3 )
material/0 = ExtResource( 4 )

[node name="Camera" type="Camera" parent="RB"]
transform = Transform( -1, 0, -8.74228e-008, 0, 1, 0, 8.74228e-008, 0, -1, 0, 5.7, -17.36 )
current = true

   [gd_resource type="SpatialMaterial" format=2]

[resource]

albedo_color = Color( 0.447059, 0.572549, 0.666667, 1 )
metallic = 0.3

             [gd_resource type="SpatialMaterial" format=2]

[resource]

albedo_color = Color( 0.356863, 0.356863, 0.356863, 1 )
metallic = 0.3

             shader_type spatial;

uniform vec4 grass : hint_color;
uniform vec4 ocean : hint_color;

void vertex() {

}

void fragment() {
	vec3 g = grass.rgb;
	g.g *= (1.0 - 0.3 * fract(sin(UV.y) * 7.0 + sin(UV.y) * 32.0));
	ALBEDO = g;
}             shader_type spatial;

uniform vec4 tarmac : hint_color;
uniform vec4 stripe : hint_color;

varying vec3 v;

void vertex() {
	v = VERTEX;
}

void fragment() {
	float end_x = abs(v.x * 8.0);
	float z = v.z * 16.0;
	if (abs(v.x) > 0.95 || abs(v.z) > 0.94 && end_x < 7.0 && end_x > 0.5 && fract(end_x) < 0.5 || fract(z) < 0.5 && abs(v.x) < 0.02)
		ALBEDO = stripe.rgb;
	else
		ALBEDO = tarmac.rgb;
}     GDSC   	         "      ������ڶ   �������Ŷ���   ����׶��   ����Ҷ��   ���¶���   Ѷ��   ����Ҷ��   �������Ӷ���   �������Ӷ���      Speed: %d km/h        Altitude: %d m                     
                   3YY0�  P�  QV�  W�  T�  �  T�  �  W�  T�  �  �  T�  Y`           [gd_scene load_steps=2 format=2]

[ext_resource path="res://HUD.gd" type="Script" id=1]

[node name="HUD" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 1 )

[node name="Speed" type="Label" parent="."]
margin_left = 10.0
margin_top = 10.0
margin_right = 50.0
margin_bottom = 24.0

[node name="Altitude" type="Label" parent="."]
margin_left = 10.0
margin_top = 30.0
margin_right = 50.0
margin_bottom = 44.0

           [gd_scene load_steps=10 format=2]

[ext_resource path="res://Airplane.tscn" type="PackedScene" id=1]
[ext_resource path="res://Assets/ground.shader" type="Shader" id=2]
[ext_resource path="res://Assets/runway.shader" type="Shader" id=3]
[ext_resource path="res://HUD.tscn" type="PackedScene" id=4]

[sub_resource type="ShaderMaterial" id=1]
shader = ExtResource( 2 )
shader_param/grass = Color( 0.227451, 0.501961, 0.196078, 1 )
shader_param/ocean = Color( 0.211765, 0.301961, 0.890196, 1 )

[sub_resource type="PlaneMesh" id=2]
material = SubResource( 1 )
size = Vector2( 1000, 1000 )
subdivide_width = 16
subdivide_depth = 16

[sub_resource type="PlaneShape" id=3]

[sub_resource type="PlaneMesh" id=4]

[sub_resource type="ShaderMaterial" id=5]
shader = ExtResource( 3 )
shader_param/tarmac = Color( 0.247059, 0.247059, 0.247059, 1 )
shader_param/stripe = Color( 0.835294, 0.835294, 0.835294, 1 )

[node name="Main" type="Spatial"]

[node name="Airplane" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, -86.449 )

[node name="Sun" type="DirectionalLight" parent="."]
transform = Transform( 0.498726, 0, -0.86676, -0.545491, 0.777126, -0.313871, 0.673581, 0.629345, 0.387573, 46.0296, 0, 0 )

[node name="Ground" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -3.21281, 1.22494, -0.9972 )
mesh = SubResource( 2 )
material/0 = null

[node name="StaticBody" type="StaticBody" parent="Ground"]

[node name="CollisionShape" type="CollisionShape" parent="Ground/StaticBody"]
transform = Transform( 1000, 0, 0, 0, 1, 0, 0, 0, 1000, 0, -0.2, 0 )
shape = SubResource( 3 )

[node name="Runway" type="MeshInstance" parent="."]
transform = Transform( 8, 0, 0, 0, 1, 0, 0, 0, 100, 0, 0, 0 )
mesh = SubResource( 4 )
material/0 = SubResource( 5 )

[node name="Camera" type="Camera" parent="."]
transform = Transform( 0.937647, -0.0460912, -0.34452, 0, 0.991169, -0.132602, 0.34759, 0.124334, 0.929367, -12.336, 8.53, 22.125 )

[node name="HUD" parent="." instance=ExtResource( 4 )]
             GDSC   !      !   �      ��������϶��   ����   ����Ӷ��   �����Ӷ�   ����   ж��   �������Ŷ���   ����׶��   Ѷ��   ��������Ҷ��   ������������������϶   �����޶�   �������Ӷ���   ����������ض   ϶��   ���������Ŷ�   �����¶�   ���Ҷ���   ����������Ķ   ����������Ķ   �������Ķ���   �������Ŷ���   �����Ķ�   ����   ̶��   ��������۶��   ����Ŷ��   ��¶   ζ��   ����������������Ŷ��   ����Ӷ��   ����������������Ӷ��   ���������Ӷ�         {�G�z�?                                                 $   	   %   
   ,      9      A      B      U      V      _      `      o      ~      �      �      �      �      �      �      �      �      �      �      �      �       �   !   3YY:�  �  PRRQYY;�  �  Y;�  �  Y;�  �  Y;�  �  YY0�  P�  QV�  �  T�	  P�
  PQT�  PQQ�  �  T�  �  T�  YY0�  P�  R�  R�  R�  R�  R�  R�  QV�  �  ;�  �
  PQ�  �  �  �  T�  �  T�  T�  T�  P�  Q�  �  T�  �  T�  T�  T�  P�  Q�  �  T�  �  T�  T�  T�  P�  Q�  �  �  �  �  �  T�  �  �  T�  �  �  �  T�  �  T�  �  �  �  �  T�  T�  �  T�  �  T�  T�  �  T�  �  �  �  �  �  �  �  T�  T�  �  T�  �  �  T�  T�  �  T�  �  �  T�  T�  �  T�  �  YY0�  P�  QV�  �  P�  Q�  �   P�  QY`        [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC         
         ���Ӷ���   ����Ҷ��   �������Ӷ���   ��������Ҷ��   ����         ������@                               
                     	      
   3YYYY;�  Y;�  YY0�  P�  QV�  �  �  �  Y`             GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Airplane.gdc"
             [remap]

path="res://HUD.gdc"
  [remap]

path="res://RB.gdc"
   [remap]

path="res://g.gdc"
    �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name      	   GD Flight      application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png  
   autoload/g         *res://g.gd    input/ui_rudder_left`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   Z      unicode           echo          script         input/ui_rudder_right`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   X      unicode           echo          script         input/ui_more_thrust`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   V      unicode           echo          script         input/ui_less_thrust`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   C      unicode           echo          script      $   rendering/quality/driver/driver_name         GLES2   )   rendering/environment/default_environment          res://default_env.tres  