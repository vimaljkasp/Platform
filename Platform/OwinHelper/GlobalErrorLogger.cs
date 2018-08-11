
using System.Web.Http.ExceptionHandling;

public class GlobalErrorLogger : ExceptionLogger
{
    public override void Log(ExceptionLoggerContext context)
    {
        var exception = context.Exception;
        // Write your custom logging code here
    }
}