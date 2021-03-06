<?php

namespace AdminBundle\Repository;

use Doctrine\ORM\EntityRepository;

/**
 * ModuleRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class ModuleRepository extends EntityRepository
{
    private function joinPath()
    {
        return $query = $this->createQueryBuilder("module")
            ->leftJoin("module.paths", "path");
    }

    public function findForPath($paths = null, $count = 3)
    {
        if ($paths == null) {
            $query = $this->createQueryBuilder("module")
                ->where('module.published = :is');
        } else {
            $query = $this->joinPath()
                ->where('module.published = :is');
                // ->andWhere('module.deleted = :none');
            if (is_array($paths) && count($paths) > 0) {
                $query->andWhere('path.id IN (:paths)')
                    ->setParameter('paths', $paths);
            }
        }
        $query->setParameter('is', true)
            // ->setParameter('none', false)
            ->orderBy('module.recommended', 'DESC');
            if($count != 'all'){
                $query->setMaxResults($count);
            }
            
            $query->orderBy('module.created', 'DESC');
        return $query->getQuery()->getResult();
    }

    // public function findById($id)
    // {
    //     $query = $this->createQueryBuilder("module")
    //         ->where('module.published = :is')
    //         ->andWhere('module.id = :id')
    //         ->setParameter('is', true)
    //         ->setParameter('id', $id)
    //         ->getQuery();

    //     return $query->getOneOrNullResult();
    // }
}
