function formatValidation(src, arg) {
    
    if ((arg.Value.length != 4) || (arg.Value % 1 != 0)) {
        arg.IsValid = false;
    }
}

