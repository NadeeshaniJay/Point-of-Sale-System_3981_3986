   M S B A M L   `   `   `  ����  Point of Sale System    POS.Views.ProductWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Product��5   	   $	��350��6   $	��500��6&    � WindowStartupLocation$ CenterScreen=�62   .��5      �  � RowDefinitions 5   
   �� 5      $��20 �6   �� 5	      $��50 �6   �� 5
      $��50 �6   �� 5      $��50 �6   �� 5      $��50 �6   �� 5      $
��auto �6   ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$
 Pink��6    � Offset$	 0.6Q�6,   � 5      $ Beige��6   5      .+�5   
   �� $	��266��6   $	��Top=�6   
������� �� CornerRadius$ 0 0 80 0��6J   $��6��6b   �� 5   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��	50,5,50,5q�6;   .+�5      �� $��Product Name��6      	Labeltext#��[  6+   �� 5      -   5        	 ��Name$	 NameTextBox��5        Filltext#��[ 6+   5      �� 5   
   $��2��6   $ 
Horizontal=�6"   $��	50,5,50,5q�6;   .+�5      �� $��Description��6   #��[  6*   �� 5       -   5        $	 DescriptionTextBox��5       #��[ 62   5!      �� 5#   
   $��3��6   $ 
Horizontal=�6"   $��	50,5,50,5q�6;   .+�5$      �� $��Price��6   #��[  6$   �� 5%      -   5        $	 PriceTextBox��5%      #��[ 6-   5&      �� 5(   
   $��4��6   $ 
Horizontal=�6"   $��	50,5,50,5q�6;   .+�5)      �� $��Quantity��6   #��[  6'   �� 5*      -   5        $	 QuantityTextBox��5*      #��[ 6/   5+      �� 5-   
   $��5��6   $ 
Horizontal=�6"   $��Center=�6;   $	��228��6Y   $	��Top=�6e   $��58��6}   $��0,46,0,0q�6�   .+�5.      �� -   5        
 ��Name$
 
SaveButton��5.      $
��Save��6)     save/cancel button#��[ 6R   �� 5/      -   5        $
 CancelButton��5/      $��Cancel��6+   #��[ 6W   50      52      53      