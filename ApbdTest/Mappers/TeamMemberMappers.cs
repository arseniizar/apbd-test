using ApbdTest.Contracts.Responses;
using ApbdTest.Entities;

namespace ApbdTest.Mappers;

public static class TeamMemberMappers
{
    public static TeamMemberResponse MapToGetTeamMemberResponse(this TeamMember teamMember)
    {
        return new TeamMemberResponse
        {
            Id = teamMember.IdTeamMember,
            FirstName = teamMember.FirstName,
            LastName = teamMember.LastName,
            Email = teamMember.Email,
        };
    }
}