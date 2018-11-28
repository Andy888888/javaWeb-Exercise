package servletAndEL.model;

/**
 * 描述:学生实体.
 * <p>
 *
 * @author yanwenqiang.
 * @date 2018/11/28
 */
public class StudentDo extends BaseDo {
    private String name;
    private String age;
    private String gender;
    private String number;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    @Override
    public String toString() {
        return "StudentDo{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", gender='" + gender + '\'' +
                ", number='" + number + '\'' +
                '}';
    }
}
