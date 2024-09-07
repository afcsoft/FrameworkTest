using System;
using System.Runtime.InteropServices;

namespace TestLibWrapper
{
    public static class TestLib
    {
        [DllImport("TestLib")]
        private static extern int MyTestFunc();

        public static int CallTestFunc()
        {
            return MyTestFunc();
        } 
    }
}
