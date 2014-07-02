using System.Diagnostics.Tracing;

namespace NominasSAT.Logger
{
    [EventSource(Name = "BasicLogger")]
    public class BasicLogger : EventSource
    {
        public static readonly BasicLogger Log = new BasicLogger();

        [Event(1, Message = "{0}", Level = EventLevel.Critical)]
        public void Critical(string message)
        {
            if (IsEnabled()) WriteEvent(1, message);
        }

        [Event(2, Message = "{0}", Level = EventLevel.Error)]
        public void Error(string message)
        {
            if (IsEnabled()) WriteEvent(2, message);
        }

        [Event(3, Message = "{0}", Level = EventLevel.Warning)]
        public void Warning(string message)
        {
            if (IsEnabled()) WriteEvent(3, message);
        }

    }
}