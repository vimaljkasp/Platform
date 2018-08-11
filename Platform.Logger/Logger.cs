
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Platform.Logger
{
    public class Logger
    {

        public static void Log(string logger, string logMessage)
        {
            PlatformDBEntities _repository = new PlatformDBEntities();
            _repository.ModuleLogs.Add(new Platform.Sql.ModuleLog()
            {
                LogMessage = logMessage,
                LogDate = DateTime.UtcNow,
                LoggerName = logger,
                LogType = LogLevel.Info.ToString()
            });
            _repository.SaveChanges();
        }


        public static void Error(string logger, string logMessage, Exception errorDetails)
        {
            PlatformDBEntities _repository = new PlatformDBEntities();
            _repository.ModuleLogs.Add(new Platform.Sql.ModuleLog()
            {
                LogMessage = logMessage + errorDetails.Message.ToString(),
                LogDate = DateTime.UtcNow,
                LoggerName = logger,
                LogType = LogLevel.Error.ToString(),
                StackTrace = errorDetails.StackTrace,
                ErrorDetails = errorDetails != null ? errorDetails.InnerException.ToString() : string.Empty
            });
            _repository.SaveChanges();
        }

        public static void Debug(string logger, string logMessage, Exception errorDetails)
        {
            PlatformDBEntities _repository = new PlatformDBEntities();
            _repository.ModuleLogs.Add(new Platform.Sql.ModuleLog()
            {
                LogMessage = logMessage + errorDetails.Message,
                LogDate = DateTime.UtcNow,
                LoggerName = logger,
                LogType = LogLevel.Debug.ToString(),
                StackTrace = errorDetails.StackTrace,
                ErrorDetails = errorDetails != null ? errorDetails.InnerException.ToString() : string.Empty
            });
            _repository.SaveChanges();
        }

    }

    public enum LogLevel
    {
        Debug,
        Info,
        Error

    }
}
