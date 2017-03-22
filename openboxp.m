function openboxp(handles,num)
if handles.boxesleft==21
    return
elseif handles.boxesleft==0
    set(handles.endgame, 'visible', 'on')
    set(handles.endgame, 'string', ['Congratulations! You have won £' num2str(handles.yourbox)])
else v=handles.boxes(num);
    switch v
        case 0.01
            set(handles.textbox1, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '1p');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox1, 'visible', 'off');
        case 0.1
            set(handles.textbox2, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '10p');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox2, 'visible', 'off');
          case 0.5
            set(handles.textbox3, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '50p');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox3, 'visible', 'off');
            case 1
            set(handles.textbox4, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£1');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox4, 'visible', 'off');
            case 5
            set(handles.textbox5, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£5');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox5, 'visible', 'off');
            case 10
            set(handles.textbox6, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£10');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox6, 'visible', 'off');
            case 50
            set(handles.textbox7, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£50');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox7, 'visible', 'off');
            case 100
            set(handles.textbox8, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£100');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox8, 'visible', 'off');
            case 250
            set(handles.textbox9, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£250');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox9, 'visible', 'off');
            case 500
            set(handles.textbox10, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£500');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox10, 'visible', 'off');
            case 750
            set(handles.textbox11, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£750');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox11, 'visible', 'off');
            case 1000
            set(handles.textbox12, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£1000');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox12, 'visible', 'off');
            case 3000
            set(handles.textbox13, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£3000');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox13, 'visible', 'off');
            case 5000
            set(handles.textbox14, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£5000');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox14, 'visible', 'off');
            case 10000
            set(handles.textbox15, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£10000');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'enable', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox15, 'visible', 'off');
            case 15000
            set(handles.textbox16, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£15000');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox16, 'visible', 'off');
            case 20000
            set(handles.textbox17, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£20000');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox17, 'visible', 'off');
            case 35000
            set(handles.textbox18, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£35000');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox18, 'visible', 'off');
            case 50000
            set(handles.textbox19, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£50000');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox19, 'visible', 'off');
            case 75000
            set(handles.textbox20, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£75000');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off')
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox20, 'visible', 'off');
            case 100000
            set(handles.textbox21, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£100000');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox21, 'visible', 'off');
            case 250000
            set(handles.textbox22, 'foregroundColor', [0.5,0.5,0.5]);
            set(handles.textboxshow, 'string', '£250000');
            set(handles.textboxshow, 'visible', 'on');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'off');
            set(handles.textboxshow, 'enable', 'on');
            set(handles.yourboxtext, 'enable', 'on');
            pause(1);
            set(handles.textboxshow, 'visible', 'off');
            set(findall(GUIdealornodeal, '-property', 'enable'),'enable', 'on');
            set(handles.textbox22, 'visible', 'off');
    end
end
end
