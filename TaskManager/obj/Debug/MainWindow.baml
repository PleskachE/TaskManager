   M S B A M L   `   `   `  ����F  BTaskManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TaskManager.ConvertersTaskManager.Converters  5      )clr-namespace:TaskManagerTaskManager  5      C&clr-namespace:TaskManager.RepositoryesTaskManager.Repositoryes  5	      e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089wTclr-namespace:System.Windows.Controls.Ribbon;assembly=System.Windows.Controls.RibbonSystem.Windows.Controls.Ribbon 5
      M+clr-namespace:TaskManager.TemplateSelectorsTaskManager.TemplateSelectors  5          TaskManager.MainWindow   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      ;
converters$clr-namespace:TaskManager.Converters     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      +localclr-namespace:TaskManager     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      ?repositories&clr-namespace:TaskManager.Repositoryes     5	      gribbonTclr-namespace:System.Windows.Controls.Ribbon;assembly=System.Windows.Controls.Ribbon     5
      ItemplateSelectors+clr-namespace:TaskManager.TemplateSelectors     5        � Title$#  Диспетчер задач��5      $	��800��5      $	��600��5      $	��500��5      $	��300��5       � 	Resources 5      0   *TaskManager.Repositoryes.ProcessRepository   ProcessRepository*   $TaskManager.Converters.TimeConverter  TimeConverter,   &TaskManager.Converters.MemoryConverter  MemoryConvertrer  MemoryDataTemplate �� 	Converter  NewMemoryDataTemplate  Id  ListBoxTemplate �� 
TargetType � RowDefinitions �� Orientation��%�  &	        &	      &	 &     &	 9     7  &	 �     7  &	 "    &	��y    &	 �    7  7    5   
   6)     5   
   6#     5   
   6%   �� 5   
   .R�5      �� ._�5      �� ��6   �� *PagedSystemMemorySize+8   5      5      �� 5   
   .R�5      �� 
���  ��._�5       �� ��6   �� *PagedSystemMemorySize+8   5!      5"      �� 5$   
   .R�5%      �� ._�5&      �� ��6   �� *Id+5'      5(      �� 5*   
   .R�5+      �� ._�5,      �� ��6   �� *ProcessName+5-      5.      �� 50   
   " ��62   .R�51      �  52      �� 53      $
��auto �6$   �� 54      $
��auto �6$   �� 55      $
��auto �6$   �� 56      $
��auto �6$   �� 57      $
��auto �6$   �� 58      $
��auto �6$   .+�5:      �� $��0��6   $ 
Horizontal=�6*   .+�5;      �� $��5q�6   $��Id : ��6'   �� 5<      $��10q�6    ��6,   �� *Id+5=      �� 5>      $��1��6   $ 
Horizontal=�6*   .+�5?      �� $��5q�6   $��	Имя : ��6'   �� 5@      $��10q�6    ��6,   �� *ProcessName+5A      �� 5B      $��2��6   $ 
Horizontal=�6*   .+�5C      �� $��5q�6   $*��$Базовый приоритет : ��6'   �� 5D      $��10q�6    ��6,   �� *BasePriority+5E      �� 5F      $��3��6   $ 
Horizontal=�6*   .+�5G      �� $��5q�6   $��Память : ��6'   �� 5H      $��10q�6    ��6,   �� *PagedSystemMemorySize+8   5I      �� 5J      $��4��6   $ 
Horizontal=�6*   .+�5K      �� $��5q�6   $3��-Время запуска процесса : ��6'   �� 5L      $��10q�6    ��6,   �� *	StartTime+8  5M      5N      5O      5P      .��5R      �   	GridStyle#���  6    5S   
   �� 5T      $
��auto �6   �� 5U      �� 5V      $
��auto �6   .+�5X   
   +  %System.Windows.Controls.Ribbon.Ribbon  -   5          Name$ 
RibonPanel��5Y      $��0��5Z        RibbonStyle#���  5[         ApplicationMenu 5\      :  4System.Windows.Controls.Ribbon.RibbonApplicationMenu  5]      5  /System.Windows.Controls.Ribbon.RibbonMenuButton   SmallImageSource$ Icons\Play.png��6/   .@�5^      >  8System.Windows.Controls.Ribbon.RibbonApplicationMenuItem  -   5        	  Name$	 CloseWindow��5_      $:��4Закрыть диспетчер процессов��5a      5b      .@�5d      .  (System.Windows.Controls.Ribbon.RibbonTab  -   5        
  Name$
 
PrimaryTab��5d      $��Главная��63   .@�5e      0	  *System.Windows.Controls.Ribbon.RibbonGroup	  -   5         	 Name$ 
StartGroup��5e   %   $#��Запуск процесса��69   .@�5f      1
  +System.Windows.Controls.Ribbon.RibbonButton
  -   5         
 Name$ 	StartButt��5g      $��15,0,0,0q�5h      $��Center=�5i       
  Label$ Новый процесс��5k       
  LargeImageSource$ Icons\Play.png��5l      5m      	  5n      -   5        $ SearchGroup��5n   %   $!��Поиск процесса��6:   .@�5o      2  ,System.Windows.Controls.Ribbon.RibbonTextBox  -   5          Name$ 	FilterBox��5p      $	��100��5q      $��0,15,0,0q�5r      5s      5t      5u        5v      -   5        $
 ViewsTab��5v      $��Вид��61   .@�5w      	  -	   5        $ ThemesGroup��5w   %   $��Оформление��6:   .@�5x      �� $ 
Horizontal=�6!   .+�5y      
  -
   5        $ OrangeThemeButt��5z      $��5q�5{      
��� ���$ Оранжевый��5~      
  5      -   5        $ GreenThemeButt��5�      $��5q�5�      
��� � �$ Зелёный��5�      5�      5�      5�      5�      � 5�   
   $��1��6    � ColumnDefinitions 5�      �� 5�      �� 5�      .+�5�      &   System.Windows.Controls.DataGrid  -   5          Name$ ProcessDataGrid��5�         AutoGenerateColumns .   	 	CellStyle   	CellStyle# � 	 5�      ��5�      ��  �� Source# [   �� Path$ 	Processes� �� UpdateSourceTrigger$ PropertyChanged=�   Columns 5�      4  .System.Windows.Controls.DataGridTemplateColumn  5�      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 5�         CellTemplate# [ 5�         Header$ ID��5�         SortMemberPath$ Id��5�        5�      $ * 5�      # [��5�      $ Имя��5�      $ ProcessName��5�        5�      $ * 5�      $ Память��5�      $ PagedSystemMemorySize��5�         CellTemplateSelector 5�      ;   5TaskManager.TemplateSelectors.ProcessTemplateSelector  5�         MemoryTemplate# [ 6H      NewMemoryTemplate# [ 6}   5�      5�      � 5�      $��1��6    5�      �� 5�      �� 5�      $��* �6$   .+�5�      �� $��0��5�      #��[ 5�       � DataContext 5�      ��   �� ElementName$  ProcessDataGrid��$ SelectedItem�5�      �� 5�      $��1��6   $ 
Horizontal=�6*   .+�5�      �� $��5q�6   $.��(Полное время процесса��6'   �� 5�      -   5        ! ��Name$! TimeBox��5�       $��10q�61   5�      5�      5�      �� 5�   
   $��2��5�      $��Center=�5�      $ 
Horizontal=�5�      .+�5�      �� $��5q�6   $$��Текущий процесс:��6   �� 5�      -   5        $! SelectedProcessName��5�      $	��150��5�      $��10q�5�      ��5�      �� $  ProcessDataGrid��$ SelectedItem.ProcessName�" �� Mode$" OneWay=��� 5�      -   5        # ��Name$# StopButt��5�      $��5q�5�      $'��!Завершить процесс��5�       
 ButtonStyle#��� 
 5�      5�      5�      5�      