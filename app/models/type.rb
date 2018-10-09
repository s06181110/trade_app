class Type < ApplicationRecord
    validates :name, {presence: true}
    validates :group_id, {presence: true}
    validates :pattern, {presence: true}

    def idol
        return Idol.where(group_id: self.group_id)
    end

    def pose #ヨリチュウヒキ + 壁 座り
        if self.pattern <= 5
            return Pose.where("id <= ?", self.pattern)
        else    #封入 (A B C D) 
            return  Pose.where('? <= id and id <= ?', 6, 9);
        end
    end
end