function performCallback(hObject)
    callbackCell = get(hObject,'Callback');
    feval(callbackCell,hObject,[]);
end