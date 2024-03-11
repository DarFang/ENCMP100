function GPA=GPA_calc(classgrades)
N=length([classgrades.class]);
for n=1:N
    switch char(classgrades(n).grades)
        case {'A+','A'}
            g(n)=4;
         case 'A-'
            g(n)=3.7;
         case 'B+'
            g(n)=3.3;
         case 'B'
            g(n)=3;
         case 'B-'
            g(n)=2.7;
           case 'C+'
            g(n)=2.3;
         case 'C'
            g(n)=2;
         case 'C-'
            g(n)=1.7;
             case 'D+'
            g(n)=1.3;
         case 'D'
            g(n)=1;
         case 'F'
            g(n)=0;
            
    end
    GPA=mean(g);
end