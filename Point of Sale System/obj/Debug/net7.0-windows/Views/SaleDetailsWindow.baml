   M S B A M L   `   `   `  ����  Point of Sale System!    POS.Views.SaleDetailsWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Sale Details��5   	   $	��350��6   $	��600��6+    � WindowStartupLocation$ CenterScreen=�67   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$
 Pink��6    � Offset$	 0.6Q�6,   � 5      $ Beige��6   5      .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��10q�6.   .+�5      �� $��
Sale Date:��6   $
��Bold"�6*   �� 5      -   5         ��Name$ SaleDateTextBlock��5      $	��5,0q�63   $	��100��6@   �� 5      $��	Customer:��6   $
��Bold"�6)   $
��10,0q�6;   �� 5      -   5        $ CustomerNameTextBlock��5      $	��5,0q�67   $	��100��6D   5      &   System.Windows.Controls.DataGrid  5   
   -   5        	  Name$	 SaleProductsDataGrid��5      $��1��61   
   AutoGenerateColumns$
 False��6>      CanUserAddRows$ False��6Z      CanUserDeleteRows$ False��6q      
IsReadOnly$
 True��6�   ��5      �� 5      $ 0.5,1&�6&   $ 0.5,0&�67   .��5       � $ Beige��6#   $ 1Q�61   � 5!      $
 Pink��6#   $ 0Q�60   � 5"      $ 	#FFFFB9C5��6#   $ 0.497Q�65   5#         Columns 5%      0  *System.Windows.Controls.DataGridTextColumn  5&      ,  &System.Windows.Controls.DataGridColumn   Header$ Product Name��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6\   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   �� *Product.Name+6\     5'      $ Quantity��6%   $	 100 6T    67   �� *
Quantity+6T     5(      $ Price��6%   $	 100 6f    64   �� *Product.Price+ �� StringFormat$ C��6f     5)      $ Total��6%   $	 100 6^    64   �� *Total+$ C��6^   5+      5-      5.      