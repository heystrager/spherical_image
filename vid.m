function [ a ] = vid( a11, a22, a33, a12, a13, a23, a1, a2, a3, a0 )

E=[a11,a12,a13,a1;a12,a22,a23,a2;a13,a23,a33,a3;a1,a2,a3,a0];
e=[a11,a12,a13;a12,a22,a23;a13,a23,a33];
det_e=det(e);
det_E=det(E);
t1=a11+a22+a33;
Buf1=[a11,a12; a12,a22];
Buf2=[a11,a13; a13,a33];
Buf3=[a22,a23; a23,a33];
t2=det(Buf1)+det(Buf2)+det(Buf3);
Buf1=[a11,a1;a1,a0];
Buf2=[a22,a2;a2,a0];
Buf3=[a33,a3;a3,a0];
k1=det(Buf1)+det(Buf2)+det(Buf3);
Buf1=[a11,a12,a1;a12,a22,a2;a1,a2,a0];
Buf2=[a11,a13,a1;a13,a33,a3;a1,a3,a0];
Buf3=[a22,a23,a2;a23,a33,a3;a2,a3,a0];
k2=det(Buf1)+det(Buf2)+det(Buf3);
p=[1,-1*t1,t2,-det_e]; 
less=roots(p);
le1=less(1);
le2=less(2);
le3=less(3);
aww2kfwf=rank(e);
awwkfwf=rank(E);

if(rank(e)==3 && rank(E)==4)
    if(det_E<0)
        if((le1>0 && le2>0 && le3>0)||(le1<0 && le2<0 && le3<0))
            fprintf('Эллипсоид');
            a=1
        else
            fprintf('Двуполостный гиперболоид');
            a=4
        end
    end
    if(det_E>0)
        if((le1>0 && le2>0 && le3>0)||(le1<0 && le2<0 && le3<0))
            fprintf('Мнимый эллипс');
            a=2
        else
            fprintf('Однополостный гиперболоид');
            a=3
        end        
    end
end
    
if(rank(e)==3 && rank(E)==3)    
        if((le1>0 && le2>0 && le3>0)||(le1<0 && le2<0 && le3<0))
            fprintf('Мнимая коническая поверхность');
            a=6
        else
            fprintf('Коническая поверхность');
            a=5
        end
end

if(rank(e)==2 && rank(E)==4)    
    if(det_E<0)
            fprintf('Эллиптический параболоид');
            a=7
    end
    if(det_E>0)            
            fprintf('Гиперболический параболоид');  
            a=8
    end
end

if(rank(e)==2 && rank(E)==3)   
        if(t2>0)
            if(t1*k2<0)
            fprintf('Эллиптический цилиндр');
            a=9
            else
            fprintf('Мнимый эллиптический цилиндр');
            a=10
            end
        else
            fprintf('Гипреболический цилиндр');
            a=11
        end
end

if(rank(e)==2 && rank(E)==2)   
        if(t2>0)
            fprintf('Мнимые пересекающиеся плоскости');
            a=13
        else
            fprintf('Пересекающиеся плоскости');
            a=12
        end
end
    
if(rank(e)==1 && rank(E)==3)   
            fprintf('Параболический цилиндр');
            a=14
end

if(rank(e)==1 && rank(E)==2)   
        if(k1>0)
            fprintf('Мнимые параллельные плоскости');
            a=16
        else
            fprintf('Параллельные плоскости');
            a=15
        end
end

if(rank(e)==1 && rank(E)==1)  
    fprintf('Совпадающие плоскости');
    a=17
end
end