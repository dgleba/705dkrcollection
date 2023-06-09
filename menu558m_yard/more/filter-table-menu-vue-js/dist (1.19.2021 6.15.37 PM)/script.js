const app = new Vue({
  el: "#app",
  data: {
    filter: "",
    rows: [
    { department: "Accounting", employees: ["Bradley", "Jones", "Alvarado"],
      tlink: "http://10.4.1.231:6041" },
    {
      department: "Human Resources",
      employees: ["Juarez", "Banks", "Smith"],
      tlink: "http://10.4.1.231:6042" },

    {
      department: "Production",
      employees: ["Sweeney", "Bartlett", "Singh"],
      tlink: "http://10.4.1.231:6041" }] },




  methods: {
    highlightMatches(text) {
      const matchExists = text.
      toLowerCase().
      includes(this.filter.toLowerCase());
      if (!matchExists) return text;

      const re = new RegExp(this.filter, "ig");
      return text.replace(re, matchedText => `<strong>${matchedText}</strong>`);
    } },

  computed: {
    filteredRows() {
      return this.rows.filter(row => {
        const employees = row.employees.toString().toLowerCase();
        const department = row.department.toLowerCase();
        const searchTerm = this.filter.toLowerCase();

        return (
          department.includes(searchTerm) || employees.includes(searchTerm));

      });
    } } });