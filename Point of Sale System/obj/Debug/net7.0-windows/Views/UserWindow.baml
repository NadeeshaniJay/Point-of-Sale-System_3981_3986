   M S B A M L   `   `   `  ����  Point of Sale System    POS.Views.UserWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$
  User��5   	   $	��350��6   $	��500��6#    � WindowStartupLocation$ CenterScreen=�6/   ��5      �� 5   
    �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6/   .��5      �  � Color$ 	#FF5A7E7D��6   � 5      $ 	#FFA3BAB9��6    � Offset$ 1Q�6-   5	      .��5      �  � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      $��50 �6   �� 5      $��50 �6   �� 5      $��50 �6   �� 5      $
��auto �6   ��5   
   �� 5      $ 0.1,0&�6"   $ 0.9,1&�65   .��5      � $
 Pink��6   $	 0.6Q�6,   � 5      $ Beige��6   5      .+�5   
   �� $	��260��6   $	��Top=�6   
������� �� CornerRadius$ 0 0 80 0��6J   $��5��6b   �� 5   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��	50,5,50,5q�6;   .+�5       �� $��Username��6      	Labeltext#��[  6'   �� 5!      -   5        	 ��Name$	 UsernameTextBox��5!      $	��200��6/     Filltext#��[ 6;   5"      �� 5$   
   $��2��6   $ 
Horizontal=�6"   $��	50,5,50,5q�6;   .+�5%      �� $��Password��6   #��[  6'   G� 5&      -   5        
 G�Name$
 PasswordBox��5&      $	��200��6/   
������ $��0 0 0 1q�6T   $��25��6n   5'      �� 5)   
   $��3��6   $ 
Horizontal=�6"   $��	50,5,50,5q�6;   .+�5*      �� $
��Role��6   #��[  6#   �� 5+      -   5         ��Name$ RoleComboBox��5+      $	��200��6-   $��25��69   .@�5,      �� $��Admin��6   �� 5-      $��Normal��6   5.      5/      �� 51   
   $��4��6   $ 
Horizontal=�6"   $��Center=�6;   $��0,50,0,0q�6X   $	��Top=�6j   $��73��6�   $	��210��6�   .+�52      �� -   5         ��Name$ 
SaveButton��52      $
��Save��6)     save/cancel button#��[ 6Q   �� 53      -   5        $ CancelButton��53      $��Cancel��6+   #��[ 6W   54      56      57      