Vim�UnDo� ��V��m����4�%>�0�H#s�5;���$�T߾              8                       Xd��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             Xd�b     �                   5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Xd�k     �                  -module(program3)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Xd��     �                 -export([ls/1])5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Xd��     �                 ls(Dir)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Xd��     �                     {ok, L}5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Xd��     �                      {ok, L} = file:list_dir(Dir)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Xd��     �                     lists:map(fun(X))5�_�      	                 1    ����                                                                                                                                                                                                                                                                                                                                                             Xd�     �                 3    lists:map(fun(X) -> {X, file_size_and_type(X)})5�_�      
           	      2    ����                                                                                                                                                                                                                                                                                                                                                             Xd�     �                 3    lists:map(fun(X) -> {X, file_size_and_type(X)})5�_�   	              
      F    ����                                                                                                                                                                                                                                                                                                                                                             Xd�(     �                 F    lists:map(fun(X) -> {X, file_size_and_type(X)} end, lists:sort(L))5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             Xd�*     �               -export([ls/1]).5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             Xd�E    �               '-include_lib("kernel/include/file.hrl")5�_�                       +    ����                                                                                                                                                                                                                                                                                                                                                             Xd�_     �                  �               5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             Xd�i     �   	              file_size_and_type(F)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Xd��     �   
                  case file:read_file_info(F)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Xd��     �                         {ok, Facts}5�_�                        8    ����                                                                                                                                                                                                                                                                                                                                                             Xd��    �                 8            {Facts#file_info.type, Facts#file_info.size}5��