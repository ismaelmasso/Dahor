﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.239
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace dahor.lib.error.Resources {
    using System;
    
    
    /// <summary>
    ///   A strongly-typed resource class, for looking up localized strings, etc.
    /// </summary>
    // This class was auto-generated by the StronglyTypedResourceBuilder
    // class via a tool like ResGen or Visual Studio.
    // To add or remove a member, edit your .ResX file then rerun ResGen
    // with the /str option, or rebuild your VS project.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    internal class FicheroError {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal FicheroError() {
        }
        
        /// <summary>
        ///   Returns the cached ResourceManager instance used by this class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("dahor.lib.error.Resources.FicheroError", typeof(FicheroError).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Overrides the current thread's CurrentUICulture property for all
        ///   resource lookups using this strongly typed resource class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to 150000.
        /// </summary>
        internal static string long_max {
            get {
                return ResourceManager.GetString("long_max", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to ~/log_error/Log_Error.txt.
        /// </summary>
        internal static string nombre_completo {
            get {
                return ResourceManager.GetString("nombre_completo", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Fecha: {0}.
        /// </summary>
        internal static string registro_error_fecha {
            get {
                return ResourceManager.GetString("registro_error_fecha", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Message: {0}.
        /// </summary>
        internal static string registro_error_Message {
            get {
                return ResourceManager.GetString("registro_error_Message", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Stack Trace: {0}.
        /// </summary>
        internal static string registro_error_Trace {
            get {
                return ResourceManager.GetString("registro_error_Trace", resourceCulture);
            }
        }
    }
}
