   M S B A M L   `   `   `  ����  Point of Sale System$    POS.Views.NormalUserMainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Normal User Main Window��5   	   $	��450��6)   $	��800��66    � WindowStartupLocation$ CenterScreen=�6B   .��5      �  � 	Resources 5   
      TabItemStyle �� 
TargetType �� Property �� Value �� Triggers P� Property P� Value��%\  &	        �� 5      " ��6)   .�5	      ��  � ��
 �����6/   �� 5
       � ��$ 40��6+   �� 5       � ��
 �����6/   �� 5       � ��$ 20(�6-   �� 5       � ��$ SemiBold"�6/    5      P� 5       �@��
IsSelected$
 True��64   . �5      ��  � ��
 �   �67   5      5      5      ��5   
   �� 5      	 �� 
StartPoint$	 0.1,0&�6"   
 �� EndPoint$
 0.9,1&�65   .��5      �  � Color$
 pink��6    � Offset$	 0.6Q�6,   � 5      $ Yellow��6   5      .+�5   
   �� $	��350��6   $	��Top=�6   
������� �� CornerRadius$ 	0 0 100 0��6I   �� 5   
   .@�5      �� $
��Sell��6   #��[  6$   .��5      �  � ColumnDefinitions 5       �� 5!      $
��581* �6+   �� 5"      $
��219* �6+    � RowDefinitions 5$      �� 5%      $
��Auto �6(   �� 5&      $��* �6(   �� 5'      $
��Auto �6(   .+�5*      �� $��0��6   $��
Sale Date:��6)   
�������$��2��6Q   $��	0,0,0,358q�6e   $��2��6x   (  "System.Windows.Controls.DatePicker  5+      -   5          Name$ SaleDatePicker��5+   !   $	��200��69   $
��Left=�6E   �� 5-      $��1��6   $��	Products:��6)   $��2��6=   &   System.Windows.Controls.DataGrid  5.      -   5          Name$ ProductDataGrid��5.   ,   $��1��6      AutoGenerateColumns$ False��6E      CanUserAddRows$ False��5/   ?      CanUserDeleteRows$ False��6V   $��0,44,67,100q�6p   
�������$��2��6�   ��6   ��  �� Path$ Products�   Columns 50      0  *System.Windows.Controls.DataGridTextColumn  51      ,  &System.Windows.Controls.DataGridColumn   Header$ Product��61      
IsReadOnly$
 True��6[   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6B   �� *Name+6[     52      $ Price��61   $
 True��6Z    6@   �� *Price+6Z     53      $ Quantity��61    6C   �� *
Quantity+55      �� 57      $��1��6!    �� Orientation$ 
Horizontal=�6.   $
��Left=�6G   $��295,277,0,0q�6b   .+�58      �� $��Add Sale��6!   $	��100��6W   $��	0,10,10,0q�6c     save/cancel button#��[ 6v   ��64   �� *AddSaleCommand+6v   �� 59      $��Cancel��6!   $	��100��6X   $��0,10,0,0q�6d   #��[ 6v   ��62   �� *CancelSaleCommand+6v   5:      5;      5<      �� 5>      $��Sales Reports��6   #��[  6-   .��5?      � $	��391��6   $��Center=�6$    5@      �� 5A      $
��Auto �6(   �� 5B      $
��Auto �6(   �� 5C      $��* �6(   �� 5D      $
��Auto �6(   .+�5G      �� $��0��6   $��Start Date:��6)     5H      -   5        $ StartDatePicker��5H   .   $��0��6!   $	��200��6G   $
��Left=�6S   �� 5J      $��1��6   $��	End Date:��6)     5K      -   5        $ EndDatePicker��5K   .   $��1��6!   $	��200��6E   $
��Left=�6Q   �� 5N      $��2��6!   $ 
Horizontal=�6.   $��Center=�6G   $��	0,245,0,0q�6d   $	��246��6w   $��75��6�   $	��Top=�6�   .+�5O      �� $��Generate Report��6!   #��[ 6f   $	��103��6�   ��6;   �� *GenerateReportCommand+6�   �� 5P      $��Cancel Sale��6!   #��[ 6]   $	��100��6�   ��67   �� *CancelSaleCommand+6�   5Q        5T      $��1��6   $ False��6J   $ False��6f   $ False��6}   $��
0,35,69,96q�6�   $��2��6�   
���������6,   �� *Sales+ �� SelectedItem 6�   �� *SelectedSale+ 5U        5V      $ ID��61   $
 True��6T    6=   �� *Id+6T     5W      $ Customer��61   $
 True��6e    6C   �� *Customer.Name+6e     5X      $ 	Sale Date��61   $
 True��6a    6D   �� *
SaleDate+6a     5Y      $ Total Amount��61   $
 True��6g    6G   �� *TotalAmount+6g   4  .System.Windows.Controls.DataGridCheckBoxColumn  5Z      $ Canceled��65   $
 True��6f    6G   �� *
IsCanceled+6f   5\      5]      5^      5a      5b      5c      