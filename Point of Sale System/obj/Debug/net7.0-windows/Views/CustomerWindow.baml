   M S B A M L   `   `   `  ����  Point of Sale System    POS.Views.CustomerWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Customer��5   	   $	��350��6   $	��500��6'    � WindowStartupLocation$ CenterScreen=�63   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   $��353.363��6*   �� 5      $
��Auto �6   �� 5	      $
��Auto �6   �� 5
      $
��Auto �6   ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$
 Pink��6    � Offset$	 0.6Q�6,   � 5      $ Beige��6   5      .+�5   
   �� $	��273��6   $	��Top=�6   
������� �� CornerRadius$ 0 0 80 0��6J   �� 5   
   $��Customer Details��6   $��Center=�6+   $��
0,30,0,315q�6H   $��24(�6\   $%��Bahnschrift Light SemiCondensed)�6j   $	��180��6�   �� 5   
    �� Orientation$ 
Horizontal=�6   $��60,100,20,253q�6.   .+�5      �� $��Customer Name��6      	Labeltext#��[  6,   �� 5      -   5        	 ��Name$	 NameTextBox��5      $	��200��6+     Filltext#��[ 67   5      �� 5   
   $ 
Horizontal=�6   $��60,140,20,209q�6.   .+�5      �� $��Phone Number��6   #��[  6+   �� 5      -   5        $	 PhoneNumberTextBox��5      $	��200��62   #��[ 6>   5      �� 5!   
   $ 
Horizontal=�6   $��60,180,20,163q�6.   .+�5"      �� $��Email��6   #��[  6$   �� 5#      -   5        $	 EmailTextBox��5#      $	��200��6,   #��[ 68   5$      �� 5&   
   $ 
Horizontal=�6   $��Center=�6.   $��	0,273,0,0q�6K   $	��Top=�6^   $��56��6v   $	��210��6�   .+�5'      �� -   5        
 ��Name$
 
SaveButton��5'      $
��Save��6)     save/cancel button#��[ 6Q   �� 5(      -   5        $
 CancelButton��5(      $��Cancel��6+   #��[ 6W   5)      5*      5+      