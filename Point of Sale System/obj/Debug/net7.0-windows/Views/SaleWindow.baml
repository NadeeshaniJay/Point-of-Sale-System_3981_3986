   M S B A M L   `   `   `  ����  Point of Sale System    POS.Views.SaleWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$
  Sale��5   	   $	��500��6   $	��500��6#    � WindowStartupLocation$ CenterScreen=�6/   .��5      � $��0,0,0,-1q�6    � RowDefinitions 5   
   �� 5      $��40 �6   �� 5      $��40 �6   �� 5	      $��40 �6   �� 5
      $
��Auto �6   $��183.96��6*   �� 5      $
��Auto �6   $	��100��6*   ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$
 Pink��6    � Offset$	 0.6Q�6,   � 5      $ Beige��6   5      .+�5   
   �� $��2��6   $	��241��6   $	��Top=�6+   
������� �� CornerRadius$ 0 80 0 0��6W   $��0,38,0,0q�6o    J� RenderTransformOrigin$ 0.5,0.5&�6�   $��3��6�   z�5      V� 5      .~�5      �� 	 �� ScaleY$	 -1Q�6%   �� 5      �� 5      T� 5      5      5      �� 5    
   $��0��6   $��
Sale Date:��6   $��0,0,0,25q�62   $��2��6D   (  "System.Windows.Controls.DatePicker  5!   
   -   5        
  Name$
 SaleDatePicker��5!      $	��200��6-   $
��Left=�69   $��24��6T   �� 5#   
   $��1��6   $��	Customer:��6   $��0,0,0,11q�61   �� 5$   
   -   5         ��Name$ CustomerComboBox��5$       $��1��6   $	��200��6:   $
��Left=�6F    �� DisplayMemberPath$
 Name��5%   5    �� SelectedValuePath$ Id��6N   $��24��6e   ��6   �� *	Customers+6e   �� 5'   
   $��2��6   $��	Products:��6   $
��Bold"�61   $��0,0,0,17q�6C   &   System.Windows.Controls.DataGrid  5(   
   -   5          Name$ ProductDataGrid��5(       $��3��6      AutoGenerateColumns$ False��69      CanUserAddRows$ False��5)   8      CanUserDeleteRows$ False��6O   $��	0,0,0,283q�6i   $��2��6|   ��6   �� *SaleProducts+   Columns 5*      0  *System.Windows.Controls.DataGridTextColumn  5+      ,  &System.Windows.Controls.DataGridColumn   Header$ Product��6%      
IsReadOnly$
 True��6W      Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 6i   1  +System.Windows.Controls.DataGridBoundColumn   Binding 66   �� *Product.Name+6i     5,      $ Price��6%   $
 True��6V   $	 150 6h    64   �� *Product.Price+6h     5-      $ Quantity��6%   $ * 6T    67   �� *
Quantity+6T   5/      �� 51   
   $��3��6    �� Orientation$ 
Horizontal=�6"   $
��Left=�6;   $	��196��6V   $ 0.502,0.461&�6b   $��150,244,0,89q�6�   $��2��6�   .+�52      �� -   5         ��Name$ 
SaveButton��52      $
��Save��6)      save/cancel button#���   6Q   �� 53      -   5        $ CancelButton��53      $��Cancel��6+   #���   6W   54      56      57      