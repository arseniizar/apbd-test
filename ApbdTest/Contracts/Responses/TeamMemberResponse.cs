namespace ApbdTest.Contracts.Responses;

public record struct TeamMemberResponse(
    int Id,
    String FirstName,
    String LastName,
    String Email
);