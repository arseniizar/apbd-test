namespace ApbdTest.Exceptions;

public class NotFoundException : Exception
{
    public NotFoundException(String message) : base(message)
    {
    }
}

public class BadRequestException : Exception
{
    public BadRequestException(String message) : base(message)
    {
    }
}