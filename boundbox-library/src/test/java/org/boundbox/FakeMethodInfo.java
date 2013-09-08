package org.boundbox;

import java.util.List;

import org.boundbox.model.FieldInfo;
import org.boundbox.model.MethodInfo;

public class FakeMethodInfo extends MethodInfo {
    
    private String returnTypeName;
    private List<String> listThrownTypeNames;
    
    
    public FakeMethodInfo(String methodName, String returnTypeName, List<FieldInfo> listParameters, List<String> listThrownTypeNames ) {
        super();
        this.methodName = methodName;
        this.returnTypeName = returnTypeName;
        this.parameterTypes = listParameters;
        this.listThrownTypeNames = listThrownTypeNames;
    }
    
    public String getReturnTypeName() {
        return returnTypeName;
    }
    
    public List<String> getListThrownTypeNames() {
        return listThrownTypeNames;
    }
}
