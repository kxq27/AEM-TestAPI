namespace WebApplication1.Models
{
    public class Login
    {
        public string? Username { get; set; }
        public string? Password { get; set; }
    }

    public class Account : Login
    {
        public long Id { get; set; }
        public string? Status { get; set; }

        public string? Bearer { get; set; }
    }

    public class RequestType
    {
        public string? PlatformWell { get; set; }
        public string? ActualDummy { get; set; }
    }
}
