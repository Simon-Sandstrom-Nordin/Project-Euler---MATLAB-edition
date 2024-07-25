clc; clear; close all;

counter = 0;

for p1 = 0:200
    for p2 = 0:100
        for p5 = 0:40
            for p10 = 0:20
                for p20 = 0:10
                    for p50 = 0:4
                        for p100 = 0:2
                            for p200 = 0:1
                                if p1 + 2*p2 + 5*p5 + 10*p10 + 20*p20 + 50*p50 + 100*p100 + 200*p200 == 200
                                    counter = counter + 1;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
disp(counter)
