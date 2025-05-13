namespace ApbdTest.Entities;

public class Task
{
    public int IdTask { get; set; }
    public String Name { get; set; } = String.Empty;
    public String Description { get; set; } = String.Empty;
    public DateTime Deadline { get; set; } = DateTime.Today;
    public Project Project { get; set; }
    public TaskType Type { get; set; }
    public TeamMember AssignedTo { get; set; }
    public TeamMember CreatedBy { get; set; }
}