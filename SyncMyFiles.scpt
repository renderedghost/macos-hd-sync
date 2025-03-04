FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ' ! Sync folders function definition     � 	 	 B   S y n c   f o l d e r s   f u n c t i o n   d e f i n i t i o n   
  
 i         I      �������� 0 syncfolders syncFolders��  ��    k     O       l     ��  ��    ) # Get the home directory dynamically     �   F   G e t   t h e   h o m e   d i r e c t o r y   d y n a m i c a l l y      r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        �    e c h o   $ H O M E��    o      ���� 0 homedirectory homeDirectory      l   ��������  ��  ��        l   ��   ��    1 + Define source folder on the internal drive      � ! ! V   D e f i n e   s o u r c e   f o l d e r   o n   t h e   i n t e r n a l   d r i v e   " # " r     $ % $ b     & ' & o    	���� 0 homedirectory homeDirectory ' m   	 
 ( ( � ) ) $ / D e s k t o p / m i x - f i l e s % o      ���� 0 sourcefolder sourceFolder #  * + * l   ��������  ��  ��   +  , - , l   �� . /��   . 6 0 Define destination folder on the external drive    / � 0 0 `   D e f i n e   d e s t i n a t i o n   f o l d e r   o n   t h e   e x t e r n a l   d r i v e -  1 2 1 r     3 4 3 m     5 5 � 6 6 6 / V o l u m e s / p a s s p o r t / m i x - f i l e s 4 o      ���� &0 destinationfolder destinationFolder 2  7 8 7 l   ��������  ��  ��   8  9 : 9 l   �� ; <��   ; ' ! Single rsync command with flags:    < � = = B   S i n g l e   r s y n c   c o m m a n d   w i t h   f l a g s : :  > ? > l   �� @ A��   @ 5 / '-a' for 'archive mode', preserving attributes    A � B B ^   ' - a '   f o r   ' a r c h i v e   m o d e ' ,   p r e s e r v i n g   a t t r i b u t e s ?  C D C l   �� E F��   E 1 + '--ignore-existing' to skip existing files    F � G G V   ' - - i g n o r e - e x i s t i n g '   t o   s k i p   e x i s t i n g   f i l e s D  H I H l   �� J K��   J F @ '--delete' to remove files in destination not present in source    K � L L �   ' - - d e l e t e '   t o   r e m o v e   f i l e s   i n   d e s t i n a t i o n   n o t   p r e s e n t   i n   s o u r c e I  M N M r    ! O P O b     Q R Q b     S T S b     U V U b     W X W m     Y Y � Z Z J r s y n c   - a v   - - i g n o r e - e x i s t i n g   - - d e l e t e   X n     [ \ [ 1    ��
�� 
strq \ o    ���� 0 sourcefolder sourceFolder V m     ] ] � ^ ^  /   T n     _ ` _ 1    ��
�� 
strq ` o    ���� &0 destinationfolder destinationFolder R m     a a � b b  / P o      ���� 0 rsynccommand rsyncCommand N  c d c l  " "��������  ��  ��   d  e�� e Q   " O f g h f k   % > i i  j k j I  % *�� l��
�� .sysoexecTEXT���     TEXT l o   % &���� 0 rsynccommand rsyncCommand��   k  m n m l  + +�� o p��   o : 4 Get end time and notify user that sync is completed    p � q q h   G e t   e n d   t i m e   a n d   n o t i f y   u s e r   t h a t   s y n c   i s   c o m p l e t e d n  r s r r   + 2 t u t I  + 0������
�� .misccurdldt    ��� null��  ��   u o      ���� 0 endtime endTime s  v�� v I  3 >�� w x
�� .sysonotfnull��� ��� TEXT w c   3 8 y z y b   3 6 { | { m   3 4 } } � ~ ~ $ S y n c   C o m p l e t e d   a t   | o   4 5���� 0 endtime endTime z m   6 7��
�� 
TEXT x �� ��
�� 
appr  m   9 : � � � � �  S y n c   M i x   F i l e s��  ��   g R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errmsg errMsg��   h I  F O�� ���
�� .sysodlogaskr        TEXT � b   F K � � � m   F I � � � � � & A n   e r r o r   o c c u r r e d :   � o   I J���� 0 errmsg errMsg��  ��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 0 * Ask user for permission to run the script    � � � � T   A s k   u s e r   f o r   p e r m i s s i o n   t o   r u n   t h e   s c r i p t �  � � � l     ����� � r      � � � n      � � � 1    ��
�� 
bhit � l     ����� � I    �� � �
�� .sysodlogaskr        TEXT � m      � � � � � 4 D o   y o u   w a n t   t o   s y n c   f i l e s ? � �� � �
�� 
btns � J     � �  � � � m     � � � � �  S y n c   F i l e s �  ��� � m     � � � � �  S t o p��   � �� ���
�� 
dflt � m     � � � � �  S y n c   F i l e s��  ��  ��   � o      ���� 0 
userchoice 
userChoice��  ��   �  � � � l     ��������  ��  ��   �  � � � l   > ����� � Z    > � ��� � � =    � � � o    ���� 0 
userchoice 
userChoice � m     � � � � �  S y n c   F i l e s � k    4 � �  � � � l   �� � ���   � ; 5 Get start time and notify user that sync is starting    � � � � j   G e t   s t a r t   t i m e   a n d   n o t i f y   u s e r   t h a t   s y n c   i s   s t a r t i n g �  � � � r     � � � I   ������
�� .misccurdldt    ��� null��  ��   � o      ���� 0 	starttime 	startTime �  � � � I   ,�� � �
�� .sysonotfnull��� ��� TEXT � c    $ � � � b    " � � � m      � � � � �   S y n c   S t a r t e d   a t   � o     !���� 0 	starttime 	startTime � m   " #��
�� 
TEXT � �� ���
�� 
appr � m   % ( � � � � �  S y n c   M i x   F i l e s��   �  � � � l  - -��������  ��  ��   �  � � � l  - -�� � ���   � ' ! Execute the syncFolders function    � � � � B   E x e c u t e   t h e   s y n c F o l d e r s   f u n c t i o n �  � � � I   - 2�������� 0 syncfolders syncFolders��  ��   �  ��� � l  3 3��������  ��  ��  ��  ��   � I  7 >�� ���
�� .sysodlogaskr        TEXT � m   7 : � � � � �  S y n c   c a n c e l l e d .��  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � � ���   � ������ 0 syncfolders syncFolders
�� .aevtoappnull  �   � **** � �� ���� � ����� 0 syncfolders syncFolders��  ��   � �������������� 0 homedirectory homeDirectory�� 0 sourcefolder sourceFolder�� &0 destinationfolder destinationFolder�� 0 rsynccommand rsyncCommand�� 0 endtime endTime�� 0 errmsg errMsg �  �� ( 5 Y�� ] a�� }���� ������� ���
�� .sysoexecTEXT���     TEXT
�� 
strq
�� .misccurdldt    ��� null
�� 
TEXT
�� 
appr
�� .sysonotfnull��� ��� TEXT�� 0 errmsg errMsg��  
�� .sysodlogaskr        TEXT�� P�j E�O��%E�O�E�O��,%�%��,%�%E�O �j O*j E�O�%�&��l W X  a �%j  � �� ���~ � ��}
�� .aevtoappnull  �   � **** � k     > � �  � � �  ��|�|  �  �~   �   �  ��{ � ��z ��y�x�w�v ��u�t ��s�r ��q�p �
�{ 
btns
�z 
dflt�y 
�x .sysodlogaskr        TEXT
�w 
bhit�v 0 
userchoice 
userChoice
�u .misccurdldt    ��� null�t 0 	starttime 	startTime
�s 
TEXT
�r 
appr
�q .sysonotfnull��� ��� TEXT�p 0 syncfolders syncFolders�} ?����lv��� �,E�O��  "*j E�O��%�&�a l O*j+ OPY 	a j  ascr  ��ޭ