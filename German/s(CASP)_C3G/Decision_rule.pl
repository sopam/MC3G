
% Decision rule to classify 
    lite_good_credit(A,_,_,_,_):- A = 'no_checking_account'.
    lite_good_credit(A,B,C,D,E):- A \= 'no_checking_account', B \= 'all credits at this bank paid back duly', 
                                    D .=<.21,E .>. 428,not ab1(C,E).
    ab1(C,E):- C = 'car or other', E .=<.1345. 


good_credit(A,B,C,D,E):- pre_checking_account_status(A),    pre_credit_history(B),   pre_property(C),   pre_duration_months(D),   pre_credit_amount(E).