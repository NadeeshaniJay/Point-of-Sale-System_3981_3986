   M S B A M L   `   `   `  ����O  KPoint of Sale System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:POS.ViewModelsPOS.ViewModels  5   	       POS.Views.AdminMainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   +vmclr-namespace:POS.ViewModels     5   	     � Title$  Admin Main Window��5   	   $	��450��6#   $	��800��60    � WindowStartupLocation$ CenterScreen=�6<    � DataContext 5      #   POS.ViewModels.AdminViewModel  5   
   .��5	      �  � 	Resources 5   
      TabItemStyle �� 
TargetType �� Property �� Value �� Triggers P� Property	 P� Value��%\  &	        �� 5      " ��6)   .�5      ��  � ��
 �����6/   �� 5       � ��$ 40��6+   �� 5       � ��
 �����6/   �� 5       � ��$ 20(�6-   �� 5       � ��$ SemiBold"�6/    5      P� 5       �@��
IsSelected$
	 True��64   . �5      ��  � ��
 �ݠ��67   5      5      5      ��5   
   �� 5      
 �� 
StartPoint$
 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$
 Pink��6    � Offset$	 0.6Q�6,   � 5      $ Yellow��6   5      .+�5"   
   �� $	��350��6   $	��Top=�6   
������� �� CornerRadius$ 	0 0 100 0��6I   �� 5$   
   $
��0 10q�6   .@�5%      �� $��Users��6   #��[  6%   $	��200��6K   .��5&      �  � ColumnDefinitions 5'      �� 5(      $	��29* �6+   �� 5)      $	��51* �6+   .+�5+      �� $��2��6c   ��6   �� *Users+ �� SelectedItem 6=   �� *SelectedUser+ �� View 5,      �� 5-      .P�5.   "   �� $��Username��61    �� DisplayMemberBinding 6C   �� *
Username+�� 5/   "   $
��Role��61    6?   �� *Role+50      52      �� 53       �� Orientation$ 
Horizontal=�6!   $��250,302,0,0q�6:   $
��Left=�6O   $��2��6j   .+�54      �� $	��Add��6!     save/cancel button#��[ 6S   ��6/   �� *AddUserCommand+6S   �� 55      $��Update��6!   #��[ 6Y   ��62   �� *UpdateUserCommand+6Y   �� 56      $��Delete��6!   #��[ 6X   ��62   �� *DeleteUserCommand+6X   57      58      59      �� 5:      $��Products��6   #��[  6(   $	��200��6N   .��5;      � .+�5=      �� -   5        ��5=      �� *
Products+ 6@   �� *SelectedProduct+ 5>      �� 5?      .P�5@   "   �� $��Product Name��61    �� Width$	 180��6m    6G   �� *Name+6m   �� 5A   "   $��Description��61   $	 200��6s    6F   �� *Description+6s   �� 5B   "   $��Price��61   $	 150��6g    6@   �� *Price+6g   �� 5C   "   $��Quantity��61    6C   �� *
Quantity+5D      5F      �� 5G      $ 
Horizontal=�6"   $��	0,302,0,0q�6;   $��Center=�6N   .+�5H      �� $	��Add��6!   #��[ 6U   ��6/   �� *AddProductCommand+6U   �� 5I      $��Update��6!   #��[ 6[   ��62   �� *UpdateProductCommand+6[   �� 5J      $��Delete��6!   #��[ 6[   ��62   �� *DeleteProductCommand+6[   5K      5L      5M      �� 5O      $��	Customers��6   #��[  6)   $	��200��6O   .��5P      � .+�5R      �� 
���������6   �� *	Customers+ 6A   �� *SelectedCustomer+ 5S      �� 5T      .P�5U   "   �� $��Customer Name��61   $	 200��6n    6H   �� *Name+6n   �� 5V   "   $��Phone Number��61   $	 180��6t    �� HeaderStringFormat$  ��6�    6G   �� *PhoneNumber+6�   �� 5W   "   $��Email��61    6@   �� *Email+5X      5Z      �� 5[      $ 
Horizontal=�6!   $��Center=�6:   $��	0,302,0,0q�6W   .+�5\      �� $	��Add��6!   #��[ 6V   ��6/   �� *AddCustomerCommand+6V   �� 5]      $��Update��6!   #��[ 6\   ��62   �� *UpdateCustomerCommand+6\   �� 5^      $��Delete��6!   #��[ 6\   ��62   �� *DeleteCustomerCommand+6\   5_      5`      5a      �� 5c      $��Sales��6   #��[  6%   .��5d      � .+�5f      �� ��6   �� *Sales+ 6=   �� *SelectedSale+ 5g      �� 5h      .P�5i   "   �� $��	Sale Date��61   $	 200��6n    6D   �� *
SaleDate+6n   �� 5j   "   $��Customer Name��61    6H   �� *Customer.Name+�� 5k   "   $��Total Amount��61    6G   �� *TotalAmount+5l      5n      �� 5o      $ 
Horizontal=�6!   $��	0,302,0,0q�6:   $��Center=�6M   .+�5p      �� $	��Add��6!   #��[ 6R   ��6/   �� *AddSaleCommand+6R   �� 5q      $��View Details��6!   #��[ 6c   $��97��6�   ��68   �� *ViewSaleDetailsCommand+6�   �� 5r      $��Generate Report��6!   #��[ 6e   $	��113��6�   ��6;   �� *GenerateReportCommand+6�   5s      5t      5u      5v      5w      5x      