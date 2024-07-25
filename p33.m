clc; clear; close all;

cancellables = [1,2,3,4,5,6,7,8,9];

num_list = [];
den_list = [];
numerator_list = [];
denumerator_list = [];

for numerator = 11:99
    for denominator = 11:99
        if numerator == denominator
            % disp(num2str(numerator) + " : " + num2str(denominator) + " : skipped")
            continue
        end
        % less than one in value
        if numerator >= denominator
            continue
        end

        % disp(num2str(numerator) + " : " + num2str(denominator) + " : not skipped")
        
        num_cell = split(num2str(numerator), "");
        num_cell_trim = num_cell(2:length(num_cell)-1);

        den_cell = split(num2str(denominator), "");
        den_cell_trim = den_cell(2:length(den_cell)-1);

        % % provar switch-statement
        % switch numerator / denominator
        %     % tens / tens
        %     case str2num(num_cell_trim{1}) / str2num(num_cell_trim{1})
        % 
        %     % tens / ones
        %     case str2num(num_cell_trim{1}) / str2num(num_cell_trim{2})
        % 
        %     % ones / tens
        %     case str2num(num_cell_trim{2}) / str2num(num_cell_trim{1})
        % 
        %     % ones / ones
        %     case str2num(num_cell_trim{2}) / str2num(num_cell_trim{2
        % 
        % end

        % tens / tens
        if num_cell_trim{1} == den_cell_trim{1} && any(ismember(cancellables, str2num(num_cell_trim{1})))
            % disp("a")
            if str2num(num_cell_trim{2}) / str2num(den_cell_trim{2}) == numerator/denominator
                % disp("1")
                num_list(end+1) = str2num(num_cell_trim{1});
                den_list(end+1) = str2num(den_cell_trim{1});
                numerator_list(end+1) = numerator;
                denumerator_list(end+1) = denominator;
                continue
            end
        end

        % tens / ones
        if num_cell_trim{1} == den_cell_trim{2} && any(ismember(cancellables, str2num(num_cell_trim{1})))
            % disp("b")
            if str2num(num_cell_trim{2}) / str2num(den_cell_trim{1}) == numerator/denominator
                % disp("2")
                num_list(end+1) = str2num(num_cell_trim{1});
                den_list(end+1) = str2num(den_cell_trim{2});
                numerator_list(end+1) = numerator;
                denumerator_list(end+1) = denominator;
                continue
            end
        end

        % ones / tens
        if num_cell_trim{2} == den_cell_trim{1} && any(ismember(cancellables, str2num(num_cell_trim{2})))
            % disp("c")
            if str2num(num_cell_trim{1}) / str2num(den_cell_trim{2}) == numerator/denominator
                % disp("3")
                num_list(end+1) = str2num(num_cell_trim{2});
                den_list(end+1) = str2num(den_cell_trim{1});
                numerator_list(end+1) = numerator;
                denumerator_list(end+1) = denominator;
                continue
            end
        end

        % ones / ones
        if num_cell_trim{2} == den_cell_trim{2} && any(ismember(cancellables, str2num(num_cell_trim{2})))
            % disp("d")
            if str2num(num_cell_trim{1}) / str2num(den_cell_trim{1}) == numerator/denominator
                % disp("4")
                num_list(end+1) = str2num(num_cell_trim{2});
                den_list(end+1) = str2num(den_cell_trim{2});
                numerator_list(end+1) = numerator;
                denumerator_list(end+1) = denominator;
                continue
            end
        end

    end
end

num_list
den_list
numerator_list
denumerator_list

% mysteriet till nästa gång: Varför kommer vi inte in i inre if-satserna
% trots att vi kan utvärdera kvoterna i terminalen?
% svar: för att vi är puckade och kollar de kvoten av de siffrorna vi
% kancellerade, vilket alltid kommer bli 1 vilket aldrig kommer bli = HL
% som är kvoten av två olika tal.

p_n = prod(numerator_list)
p_d = prod(denumerator_list)

g = gcd(p_n, p_d)
disp("Answer is: " + num2str(p_d/g))

% Rememberance day for the greatest common divisor algoritm, Euklides
% algorithm.
