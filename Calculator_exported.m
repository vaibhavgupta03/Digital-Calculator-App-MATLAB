classdef Calculator_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                   matlab.ui.Figure
        ResultPanel                matlab.ui.container.Panel
        OutputTextArea             matlab.ui.control.TextArea
        OutputTextAreaLabel        matlab.ui.control.Label
        InputNumbersPanel          matlab.ui.container.Panel
        InputNumber2TextArea       matlab.ui.control.TextArea
        InputNumber2TextAreaLabel  matlab.ui.control.Label
        InputNumber1TextArea       matlab.ui.control.TextArea
        InputNumber1TextAreaLabel  matlab.ui.control.Label
        InputOperatorPanel         matlab.ui.container.Panel
        Button_5                   matlab.ui.control.Button
        Button_4                   matlab.ui.control.Button
        Button_3                   matlab.ui.control.Button
        Button_2                   matlab.ui.control.Button
        Button                     matlab.ui.control.Button
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: Button
        function ButtonPushed(app, event)
            a = str2double(app.InputNumber1TextArea.Value);
            b = str2double(app.InputNumber2TextArea.Value);
            c = a + b;
            app.OutputTextArea.Value = num2str(c);
        end

        % Button pushed function: Button_2
        function Button_2Pushed(app, event)
            a = str2double(app.InputNumber1TextArea.Value);
            b = str2double(app.InputNumber2TextArea.Value);
            c = a - b;
            app.OutputTextArea.Value = num2str(c);
        end

        % Button pushed function: Button_3
        function Button_3Pushed(app, event)
            a = str2double(app.InputNumber1TextArea.Value);
            b = str2double(app.InputNumber2TextArea.Value);
            c = a * b;
            app.OutputTextArea.Value = num2str(c);
        end

        % Button pushed function: Button_4
        function Button_4Pushed(app, event)
            a = str2double(app.InputNumber1TextArea.Value);
            b = str2double(app.InputNumber2TextArea.Value);
            c = a / b;
            app.OutputTextArea.Value = num2str(c);
        end

        % Button pushed function: Button_5
        function Button_5Pushed(app, event)
            a = str2double(app.InputNumber1TextArea.Value);
            b = str2double(app.InputNumber2TextArea.Value);
            c = a ^ b;
            app.OutputTextArea.Value = num2str(c);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create InputOperatorPanel
            app.InputOperatorPanel = uipanel(app.UIFigure);
            app.InputOperatorPanel.BorderColor = [0 0 0];
            app.InputOperatorPanel.ForegroundColor = [0.6353 0.0784 0.1843];
            app.InputOperatorPanel.TitlePosition = 'centertop';
            app.InputOperatorPanel.Title = 'Input Operator';
            app.InputOperatorPanel.BackgroundColor = [0.8 1 1];
            app.InputOperatorPanel.FontWeight = 'bold';
            app.InputOperatorPanel.FontSize = 16;
            app.InputOperatorPanel.Position = [32 46 143 396];

            % Create Button
            app.Button = uibutton(app.InputOperatorPanel, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button.Tag = 'add_btn';
            app.Button.FontSize = 36;
            app.Button.FontWeight = 'bold';
            app.Button.Position = [25 290 96 46];
            app.Button.Text = '+';

            % Create Button_2
            app.Button_2 = uibutton(app.InputOperatorPanel, 'push');
            app.Button_2.ButtonPushedFcn = createCallbackFcn(app, @Button_2Pushed, true);
            app.Button_2.Tag = 'sub_btn';
            app.Button_2.VerticalAlignment = 'top';
            app.Button_2.FontSize = 36;
            app.Button_2.FontWeight = 'bold';
            app.Button_2.Position = [25 225 96 46];
            app.Button_2.Text = '-';

            % Create Button_3
            app.Button_3 = uibutton(app.InputOperatorPanel, 'push');
            app.Button_3.ButtonPushedFcn = createCallbackFcn(app, @Button_3Pushed, true);
            app.Button_3.Tag = 'mul_btn';
            app.Button_3.VerticalAlignment = 'top';
            app.Button_3.FontSize = 36;
            app.Button_3.FontWeight = 'bold';
            app.Button_3.Position = [25 155 96 46];
            app.Button_3.Text = '*';

            % Create Button_4
            app.Button_4 = uibutton(app.InputOperatorPanel, 'push');
            app.Button_4.ButtonPushedFcn = createCallbackFcn(app, @Button_4Pushed, true);
            app.Button_4.Tag = 'div_btn';
            app.Button_4.IconAlignment = 'right';
            app.Button_4.FontSize = 36;
            app.Button_4.FontWeight = 'bold';
            app.Button_4.Position = [25 90 96 46];
            app.Button_4.Text = '/';

            % Create Button_5
            app.Button_5 = uibutton(app.InputOperatorPanel, 'push');
            app.Button_5.ButtonPushedFcn = createCallbackFcn(app, @Button_5Pushed, true);
            app.Button_5.Tag = 'rem_btn';
            app.Button_5.FontSize = 36;
            app.Button_5.FontWeight = 'bold';
            app.Button_5.Position = [25 25 96 46];
            app.Button_5.Text = '^';

            % Create InputNumbersPanel
            app.InputNumbersPanel = uipanel(app.UIFigure);
            app.InputNumbersPanel.BorderColor = [0 0 0];
            app.InputNumbersPanel.TitlePosition = 'centertop';
            app.InputNumbersPanel.Title = 'Input Numbers';
            app.InputNumbersPanel.BackgroundColor = [1 1 0.6706];
            app.InputNumbersPanel.FontWeight = 'bold';
            app.InputNumbersPanel.FontSize = 16;
            app.InputNumbersPanel.Position = [224 214 381 228];

            % Create InputNumber1TextAreaLabel
            app.InputNumber1TextAreaLabel = uilabel(app.InputNumbersPanel);
            app.InputNumber1TextAreaLabel.HorizontalAlignment = 'right';
            app.InputNumber1TextAreaLabel.FontSize = 14;
            app.InputNumber1TextAreaLabel.FontWeight = 'bold';
            app.InputNumber1TextAreaLabel.Position = [6 142 108 22];
            app.InputNumber1TextAreaLabel.Text = 'Input Number 1';

            % Create InputNumber1TextArea
            app.InputNumber1TextArea = uitextarea(app.InputNumbersPanel);
            app.InputNumber1TextArea.FontSize = 14;
            app.InputNumber1TextArea.FontWeight = 'bold';
            app.InputNumber1TextArea.Position = [129 115 244 58];

            % Create InputNumber2TextAreaLabel
            app.InputNumber2TextAreaLabel = uilabel(app.InputNumbersPanel);
            app.InputNumber2TextAreaLabel.HorizontalAlignment = 'right';
            app.InputNumber2TextAreaLabel.FontSize = 14;
            app.InputNumber2TextAreaLabel.FontWeight = 'bold';
            app.InputNumber2TextAreaLabel.Position = [7 66 108 22];
            app.InputNumber2TextAreaLabel.Text = 'Input Number 2';

            % Create InputNumber2TextArea
            app.InputNumber2TextArea = uitextarea(app.InputNumbersPanel);
            app.InputNumber2TextArea.FontSize = 14;
            app.InputNumber2TextArea.FontWeight = 'bold';
            app.InputNumber2TextArea.Position = [130 32 244 58];

            % Create ResultPanel
            app.ResultPanel = uipanel(app.UIFigure);
            app.ResultPanel.TitlePosition = 'centertop';
            app.ResultPanel.Title = 'Result';
            app.ResultPanel.BackgroundColor = [0.7608 0.8667 0.9882];
            app.ResultPanel.FontWeight = 'bold';
            app.ResultPanel.FontSize = 16;
            app.ResultPanel.Position = [225 46 380 143];

            % Create OutputTextAreaLabel
            app.OutputTextAreaLabel = uilabel(app.ResultPanel);
            app.OutputTextAreaLabel.HorizontalAlignment = 'right';
            app.OutputTextAreaLabel.FontSize = 14;
            app.OutputTextAreaLabel.FontWeight = 'bold';
            app.OutputTextAreaLabel.Position = [24 67 51 22];
            app.OutputTextAreaLabel.Text = 'Output';

            % Create OutputTextArea
            app.OutputTextArea = uitextarea(app.ResultPanel);
            app.OutputTextArea.Position = [90 41 263 50];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Calculator_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end